import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:flutter/material.dart';


class ExistingBuilding extends StatelessWidget {
  final BuildingModel building;
  const ExistingBuilding({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Image.asset(building.image??''),
    );
  }
}
