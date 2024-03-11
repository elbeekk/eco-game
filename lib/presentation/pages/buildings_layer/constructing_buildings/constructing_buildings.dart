import 'dart:async';
import 'dart:developer';

import 'package:eco_game/application/const_building/const_building_bloc.dart';
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
    return BlocProvider(
      create: (context) => ConstBuildingBloc(),
      child: Positioned(
          top: (widget.building.positionY ?? 0) + 100,
          left: widget.building.positionX ?? 0 + 20,
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
                    //           'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                    //       Image.asset(
                    //           'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                    //     ],
                    //   ),
                    // ),
                    // Positioned(
                    //   // top: -40,
                    //   left: 0,
                    //   child: Row(
                    //     children: [
                    //       Image.asset(
                    //           'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                    //       Image.asset(
                    //           'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                    //     ],
                    //   ),
                    // ),
                    ...List.generate(
                      height ~/ 16,
                      (index) => Positioned(
                        right: 5,
                        top: index * 14 + 5,
                        child: Image.asset(
                            'assets/images/game_assets/village/images/Road Signs/cone.png'),
                      ),
                    ),
                    ...List.generate(
                      height ~/ 16,
                      (index) => Positioned(
                        left: 5,
                        top: index * 14 + 5,
                        child: Image.asset(
                            'assets/images/game_assets/village/images/Road Signs/cone.png'),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 16,
                      (index) => Positioned(
                        top: 5,
                        left: index * 14 + 5,
                        child: Image.asset(
                            'assets/images/game_assets/village/images/Road Signs/cone.png'),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 16,
                      (index) => Positioned(
                        bottom: 5,
                        right: index * 14 + 5,
                        child: Image.asset(
                            'assets/images/game_assets/village/images/Road Signs/cone.png'),
                      ),
                    ),
                    ...List.generate(
                      width ~/ 33,
                      (index) => Positioned(
                        top: height * 0.3,
                        left: index * 30 + 15,
                        child: Image.asset(
                            'assets/images/game_assets/village/images/Road Signs/Sign Attention.png'),
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
                          context.read<BuildingBloc>().add(
                              BuildingEvent.addExistingBuilding(
                                  building: widget.building,
                                  onError: (e) {},
                                  onSuccess: () {}));
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
