import 'dart:async';
import 'dart:developer';

import 'package:eco_game/application/const_building/const_building_bloc.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:eco_game/presentation/pages/auth_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../application/building/building_bloc.dart';
import '../../../../infrastructure/models/class/building.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConstructingBuilding extends StatefulWidget {
  final BuildingModel building;

  const ConstructingBuilding({super.key, required this.building});

  @override
  State<ConstructingBuilding> createState() => _ConstructingBuildingState();
}

class _ConstructingBuildingState extends State<ConstructingBuilding> {
  @override
  Widget build(BuildContext context) {
    final width = widget.building.width?.toDouble() ?? 100;
    final height = widget.building.height?.toDouble() ?? 100;
    final bottom = widget.building.bottom?.toDouble() ?? 100;
    return BlocProvider(
      create: (context) => ConstBuildingBloc(),
      child: Positioned(
          top: (widget.building.positionY ?? 0) + (widget.building.bottom ?? 0),
          left: (widget.building.positionX ?? 0) + (widget.building.left ?? 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10)),
                height: height,
                width: width,
                child: Stack(
                  children: [
                    // Positioned(
                    //   bottom: 0,
                    //   left: 0,
                    //   child: Row(
                    //     children: [
                    //       Image.asset(
                    //           'assets/images/game_assets/constructing/roadblock.png'),
                    //       Image.asset(
                    //           'assets/images/game_assets/constructing/roadblock.png'),
                    //     ],
                    //   ),
                    // ),
                    // Positioned(
                    //   // top: -40,
                    //   left: 0,
                    //   child: Row(
                    //     children: [
                    //       Image.asset(
                    //           'assets/images/game_assets/constructing/roadblock.png'),
                    //       Image.asset(
                    //           'assets/images/game_assets/constructing/roadblock.png'),
                    //     ],
                    //   ),
                    // ),
                    ...List.generate(
                      height ~/ 8,
                      (index) => Positioned(
                        right: 1,
                        top: index * 7 + 4,
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: Image.asset(
                              'assets/images/game_assets/constructing/cone.png'),
                        ),
                      ),
                    ),
                    ...List.generate(
                      height ~/ 8,
                      (index) => Positioned(
                        left: 1,
                        top: index * 7 + 4,
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: Image.asset(
                              'assets/images/game_assets/constructing/cone.png'),
                        ),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 13,
                      (index) => Positioned(
                        top: 1,
                        left: index * 10 + 7,
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: Image.asset(
                              'assets/images/game_assets/constructing/cone.png'),
                        ),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 13,
                      (index) => Positioned(
                        bottom: 1,
                        left: index * 10 + 7,
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: Image.asset(
                              'assets/images/game_assets/constructing/cone.png'),
                        ),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 21 ,
                      (index) => Positioned(
                        top: height*0.05,
                        left: index * 18 + 10,
                        child: SizedBox(
                          height: 20,
                          width: 10,
                          child: Image.asset(
                              'assets/images/game_assets/constructing/Sign Attention.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -50,
                left: -45 + (widget.building.width?.toDouble() ?? 100) * 0.5,
                child: BlocBuilder<BuildingBloc, BuildingState>(
                  builder: (context, state) {
                    return BlocBuilder<ConstBuildingBloc, ConstBuildingState>(
                      buildWhen: (previous, current) => true,
                      builder: (context, state) {
                        context.read<ConstBuildingBloc>().add(
                              ConstBuildingEvent.update(
                                time: DateTime.now(),
                              ),
                            );
                        final endTime = DateTime.fromMillisecondsSinceEpoch(
                          int.parse(
                            widget.building.date ?? '0',
                          ),
                        )
                            .add(
                              Duration(
                                minutes: ((widget.building.duration ?? 0) * 60)
                                    .toInt(),
                              ),
                            )
                            .millisecondsSinceEpoch;
                        final startTime = DateTime.fromMillisecondsSinceEpoch(
                          int.parse(
                            widget.building.date ?? '0',
                          ),
                        ).millisecondsSinceEpoch;
                        final now = state.time.millisecondsSinceEpoch;
                        final duration = Duration(
                          minutes:
                              ((widget.building.duration ?? 0) * 60).toInt(),
                        ).inMilliseconds;
                        double percent = (now - startTime) / duration;
                        if (percent >= 1.0) {
                          percent = 1.0;
                        }
                        if (endTime <= now) {
                          if (LocalStorage.getMe()?.id != null) {
                            context.read<BuildingBloc>().add(
                                BuildingEvent.addExistingBuilding(
                                    building: widget.building,
                                    onError: (e) {},
                                    onSuccess: () {}));
                          } else {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                                (route) => false);
                          }
                        }

                        return AnimatedOpacity(
                          opacity: state.time.second.isOdd ? .9 : .4,
                          duration: const Duration(seconds: 1),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.orange.shade300, width: 1.5)),
                            child: Column(
                              children: [
                                Text(
                                  Jiffy.parseFromDateTime(
                                    DateTime.fromMillisecondsSinceEpoch(
                                        endTime),
                                  ).fromNow(),
                                  style: const TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  child: LinearPercentIndicator(
                                    width: 80,
                                    lineHeight: 7,
                                    barRadius: const Radius.circular(10),
                                    progressColor: Colors.red,
                                    backgroundColor:
                                        Colors.orange.withOpacity(.1),
                                    percent: percent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
