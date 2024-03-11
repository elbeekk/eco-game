import 'dart:developer';

import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:flutter/material.dart';

class ExistingBuilding extends StatelessWidget {
  final bool isView;
  final BuildingModel building;

  const ExistingBuilding({super.key, required this.building, this.isView=false});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: building.positionY,
      left: building.positionX,
      child: GestureDetector(
        onTap: isView?null:(){
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              contentPadding: EdgeInsets.zero,
              content: Container(
                height: 100,
                width: 100,
              ),
            );
          },);
        },
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset((building.image ?? '').trim()),
        ),
      ),
    );
  }
}
