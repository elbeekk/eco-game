import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/presentation/pages/buildings_layer/existing_buildings/existing_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:shimmer/shimmer.dart';

class ExistingBuilding extends StatelessWidget {
  final bool isView;
  final BuildingModel building;
  final BuildContext contekst;

  const ExistingBuilding(
      {super.key,
      required this.building,
      this.isView = false,
      required this.contekst});

  @override
  Widget build(BuildContext context) {
    bool isGenerator = (building.energy ?? 0) >= 0;

    return Positioned(
      top: building.positionY,
      left: building.positionX,
      child: GestureDetector(
        onTap: isView
            ? null
            : () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ExistingInfo(building: building, contekst: contekst);
                  },
                );
              },
        child: Container(
          constraints: const BoxConstraints(maxHeight: 120, maxWidth: 120),
          child: Stack(
            children: [
              Image.asset((building.image ?? '').trim()),
              if (building.isRoof ?? false)
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                      child: Image.asset(
                          '${(building.image ?? '').characters.skipLast(4)}f2.png')),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
