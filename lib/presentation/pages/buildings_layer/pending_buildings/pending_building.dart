import 'dart:developer';

import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/game/game_bloc.dart';

class PendingBuilding extends StatelessWidget {
  final BuildingModel building;

  const PendingBuilding({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: building.positionY,
        left: building.positionX,
        child: BlocBuilder<BuildingBloc, BuildingState>(
          builder: (context, buildingState) {
            return BlocBuilder<GameBloc, GameState>(
              builder: (context, gameState) {
                return Draggable(
                    onDragEnd: (details) {
                      log("new ${details.offset.dx + gameState.currentPos.dx}");
                      log("old ${building.positionX}");
                      context.read<BuildingBloc>().add(
                            BuildingEvent.updatePendingBuilding(
                              building: building.copyWith(
                                  positionX: details.offset.dx +
                                      gameState.currentPos.dx,
                                  positionY: details.offset.dy +
                                      gameState.currentPos.dy),
                              onError: (String error) {
                                log(error);
                              },
                              onSuccess: () {
                                log('succes');
                              },
                            ),
                          );
                      log('succes1');
                    },
                    childWhenDragging: const SizedBox.shrink(),
                    feedback: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black.withOpacity(.2),
                                            spreadRadius: 1,
                                            blurRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.2),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),

                                // Text(" ${building.duration??'...'} hours "),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(building.image ?? '')),
                          ],
                        ),
                      ],
                    ),

                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                BlocBuilder<BuildingBloc, BuildingState>(
                                  builder: (context, state) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.read<BuildingBloc>().add(
                                              BuildingEvent
                                                  .removePendingBuilding(
                                                      building: building,
                                                      onError:
                                                          (String error) {},
                                                      onSuccess: () {}),
                                            );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  spreadRadius: 1,
                                                  blurRadius: 1)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                BlocBuilder<BuildingBloc, BuildingState>(
                                  builder: (context, buildingState) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.read<BuildingBloc>().add(
                                              BuildingEvent
                                                  .addConstructingBuilding(
                                                building: building,
                                                onError: (String error) {},
                                                onSuccess: () {},
                                              ),
                                            );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  spreadRadius: 1,
                                                  blurRadius: 1)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    );
                                  },
                                ),

                                // Text(" ${building.duration??'...'} hours "),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(building.image ?? '')),
                          ],
                        ),
                      ],
                    ));
              },
            );
          },
        ));
  }
}
