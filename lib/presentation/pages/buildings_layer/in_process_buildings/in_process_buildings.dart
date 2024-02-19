import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../infrastructure/models/class/building.dart';

class InProcessBuildings extends StatelessWidget {
  final BuildingModel building;

  const InProcessBuildings({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (building.positionY ?? 0) + 100,
        left: building.positionX ?? 0 + 20,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 50,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Wrap(
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    height: 25,
                    width: 25,
                    child: Opacity(
                      opacity: .8,
                      child: Image.asset(
                          "assets/images/game_assets/village/images/TERRAIN SET 1 - DAY.png"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 20,
              child: Image.asset(
                  'assets/images/game_assets/village/images/Road Signs/Sign Attention.png'),
            ),
            Positioned(
              top: 0,
              right: 20,
              child: Image.asset(
                  'assets/images/game_assets/village/images/Road Signs/Sign Attention.png'),
            ),
            Positioned(
              bottom: -40,
              left: 0,
              child: Row(
                children: [
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                ],
              ),
            ),
            Positioned(
              top: -40,
              left: 0,
              child: Row(
                children: [
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/roadblock.png'),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Column(
                children: [
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Column(
                children: [
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                  Image.asset(
                      'assets/images/game_assets/village/images/Road Signs/cone.png'),
                ],
              ),
            ),
            Positioned(
              top: -65,
              left: 10,
              child: Column(
                children: [
                  Text(
                    " ${Jiffy.parseFromDateTime(
                      DateTime.fromMillisecondsSinceEpoch(
                        int.parse(building.date ?? '0'),
                      ).add(
                        Duration(hours: building.duration ?? 0),
                      ),
                    ).fromNow()} ",
                    style: TextStyle(
                      color: Colors.orange.shade100,
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
                      progressColor: Colors.orange.shade100,
                      backgroundColor: Colors.orange.shade100.withOpacity(.4),
                      percent: DateTime.fromMillisecondsSinceEpoch(
                                  int.parse((building.date ?? '')))
                              .difference(
                                DateTime.now(),
                              )
                              .abs()
                              .inHours /
                          Duration(hours: building.duration ?? 0).inHours,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
