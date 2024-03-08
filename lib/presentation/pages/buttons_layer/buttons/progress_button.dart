import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProgressButton extends StatelessWidget {
  const ProgressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    content: FutureBuilder(
                      future: Future<List<UserModel>>(() async {
                        try {
                          final res = await FirebaseFirestore.instance
                              .collection('users')
                              .where(
                                'email',
                              )
                              .orderBy('points',descending: true)
                              .get();
                          List<UserModel> tempList = res.docs.map((e) {
                            return UserModel.fromJson(e.data());
                          }).toList();
                          tempList.removeWhere(
                              (element) => element.email?.isEmpty ?? true);
                          return tempList;
                        } catch (e) {
                          print("error $e");
                          return [];
                        }
                      }),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final list = snapshot.data;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.2,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffD7D7D7),
                                          borderRadius:
                                              BorderRadius.vertical(
                                                  top: Radius.circular(10))),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.3,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffC9B037),
                                          borderRadius:
                                              BorderRadius.vertical(
                                                  top: Radius.circular(10))),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.15,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff6A3805),
                                          borderRadius:
                                              BorderRadius.vertical(
                                                  top: Radius.circular(10))),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                  maxHeight: 400,
                                ),
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: list?.length,
                                  itemBuilder: (context, index) {
                                    final current = list?[index];
                                    bool isMe =
                                        current?.id == LocalStorage.getMe()?.id;
                                    return ListTile(
                                      leading: CircleAvatar(
                                        foregroundImage:
                                            CachedNetworkImageProvider(
                                                current?.photoUrl ?? ""),
                                        backgroundColor: Colors.grey.shade200,
                                      ),
                                      title: Text("${isMe?"You":current?.firstName}"),
                                      subtitle: Text("@${current?.username}"),
                                      trailing: Text("${current?.points}")
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        }
                        return Container(
                          color: Colors.red,
                          height: 100,
                          width: 100,
                        );
                      },
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.leaderboard_outlined,
              color: Colors.orange,
            ));
      },
    );
  }
}
