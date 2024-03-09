import 'package:blurrycontainer/blurrycontainer.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

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
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.zero,
                        content: FutureBuilder(
                          future: Future<List<UserModel>>(() async {
                            try {
                              final res = await FirebaseFirestore.instance
                                  .collection('users')
                                  .where(
                                    'email',
                                  )
                                  .orderBy('points', descending: true)
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
                              final first =
                                  (list?.length ?? 0) >= 1 ? (list?[0]) : null;
                              final second =
                                  (list?.length ?? 0) >= 2 ? (list?[1]) : null;
                              final third =
                                  (list?.length ?? 0) >= 3 ? (list?[2]) : null;
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Container(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 20, vertical: 10),
                                  //   child: Shimmer.fromColors(
                                  //     baseColor: Colors.orange.shade400,
                                  //     highlightColor: Colors.orange.shade400
                                  //         .withOpacity(.5),
                                  //     child: const Text(
                                  //       'Leaderboard',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.w500,
                                  //           fontSize: 18),
                                  //     ),
                                  //   ),
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset(
                                              "assets/images/png/crown.png")),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.25,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (second != null)
                                          Expanded(
                                            child: Column(
                                              children: [
                                                const Spacer(
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    // width: MediaQuery.sizeOf(context)
                                                    //         .width *
                                                    //     0.2,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.25,
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xffD7D7D7),
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        10))),
                                                    child: Center(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  CachedNetworkImageProvider(
                                                                      second.photoUrl ??
                                                                          ''),
                                                            ),
                                                            Text(
                                                              second.firstName ??
                                                                  '',
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (first != null)
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    // width: MediaQuery.sizeOf(context)
                                                    //         .width *
                                                    //     0.2,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.3,
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xffC9B037),
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        10))),
                                                    child: Center(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  CachedNetworkImageProvider(
                                                                      first.photoUrl ??
                                                                          ''),
                                                            ),
                                                            Text(
                                                              first.firstName ??
                                                                  '',
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (third != null)
                                          Expanded(
                                            child: Column(
                                              children: [
                                                const Spacer(
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    // width: MediaQuery.sizeOf(context)
                                                    //         .width *
                                                    //     0.2,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.2,
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xff6A3805),
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        10))),
                                                    child: Center(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  CachedNetworkImageProvider(
                                                                      third.photoUrl ??
                                                                          ''),
                                                            ),
                                                            Text(
                                                              third.firstName ??
                                                                  '',
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 500,
                                        maxHeight: 400,
                                      ),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.5,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.7,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: (list?.length ?? 0),
                                        itemBuilder: (context, index) {
                                          final current = list?[index];
                                          bool isMe = current?.id ==
                                              LocalStorage.getMe()?.id;
                                          return ListTile(
                                              leading: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text((index + 1).toString(),
                                                      style: GoogleFonts.vt323(
                                                        fontSize: 20,
                                                      )),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  CircleAvatar(
                                                    foregroundImage:
                                                        CachedNetworkImageProvider(
                                                            current?.photoUrl ??
                                                                ""),
                                                    backgroundColor:
                                                        Colors.grey.shade200,
                                                  ),
                                                ],
                                              ),
                                              title: Text(
                                                  "${isMe ? "You" : current?.firstName}"),
                                              subtitle:
                                                  Text("@${current?.username}"),
                                              trailing:
                                                  Text("${current?.points}"));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                            return Container(
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Shimmer.fromColors(
                                        baseColor: const Color(0xffD7D7D7),
                                        highlightColor: const Color(0xffD7D7D7)
                                            .withOpacity(.5),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.24,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.2,
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Shimmer.fromColors(
                                        baseColor: const Color(0xffC9B037),
                                        highlightColor: const Color(0xffC9B037)
                                            .withOpacity(.5),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.3,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.2,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Shimmer.fromColors(
                                        baseColor: const Color(0xff6A3805),
                                        highlightColor: const Color(0xff6A3805)
                                            .withOpacity(.5),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.17,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.2,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                      child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Shimmer.fromColors(
                                        baseColor: Colors.grey.shade400,
                                        highlightColor: Colors.grey.shade300,
                                        child: ListTile(
                                          leading: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.red,
                                          ),
                                          trailing: Container(
                                            height: 15,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            width: 25,
                                          ),
                                          title: Row(
                                            children: [
                                              Container(
                                                height: 12,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                          subtitle: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                height: 12,
                                                width: 70,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ))
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
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
