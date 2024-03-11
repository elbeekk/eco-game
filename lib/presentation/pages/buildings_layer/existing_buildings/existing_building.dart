import 'dart:developer';

import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    bool isGenerator = (building.energy ?? 0) >= 0;
                    return BlocProvider.value(
                      value: contekst.read<SettingsBloc>(),
                      child: BlocProvider.value(
                        value: contekst.read<BuildingBloc>(),
                        child: AlertDialog(
                          scrollable: true,
                          titlePadding: const EdgeInsets.all(5),
                          backgroundColor: Colors.grey.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "${building.name}",
                                  style: GoogleFonts.vt323(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          actionsPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          content: Row(
                            children: [
                              // Container(
                              //   width: MediaQuery.sizeOf(context).width * 0.3,
                              //   constraints: const BoxConstraints(
                              //       maxHeight: 200, maxWidth: 150),
                              //   child: Image.asset(
                              //     "${building.image}",
                              //     fit: BoxFit.fitHeight,
                              //   ),
                              // ),
                              Container(
                                width: 200,
                                color: Colors.red,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {},

                                            child: Text('upgrade to'),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Shimmer.fromColors(
                                    baseColor: Colors.cyan,
                                    highlightColor: Colors.cyan.withOpacity(.5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.leaderboard_outlined,
                                        ),
                                        BlocBuilder<SettingsBloc,
                                            SettingsState>(
                                          builder: (context, settingsState) {
                                            return Text(
                                              " +${building.points} points",
                                              style: GoogleFonts.vt323(
                                                  fontSize: (19 +
                                                          2 *
                                                              settingsState
                                                                  .textSize)
                                                      .toDouble()),
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Pixel.batterycharging,
                                        color: isGenerator
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      BlocBuilder<SettingsBloc, SettingsState>(
                                        builder: (context, settingsState) {
                                          return Text(
                                            " ${isGenerator ? "+" : ""}${building.energy} W/h",
                                            style: GoogleFonts.vt323(
                                                color: isGenerator
                                                    ? Colors.green
                                                    : Colors.red,
                                                fontSize: (19 +
                                                        2 *
                                                            settingsState
                                                                .textSize)
                                                    .toDouble()),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Pixel.clock,
                                        color: Colors.orange,
                                      ),
                                      BlocBuilder<SettingsBloc, SettingsState>(
                                        builder: (context, settingsState) {
                                          return Text(
                                            " ${building.duration} h",
                                            style: GoogleFonts.vt323(
                                                color: Colors.orange,
                                                fontSize: (19 +
                                                        2 *
                                                            settingsState
                                                                .textSize)
                                                    .toDouble()),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.3,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    constraints: const BoxConstraints(
                                        maxHeight: 200, maxWidth: 300),
                                    child: InteractiveViewer(
                                      scaleEnabled: false,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Pixel.infobox,
                                            color: Colors.blue,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${building.description}",
                                              style: GoogleFonts.vt323(
                                                  fontSize: 23,
                                                  color: Colors.blue,
                                                  height: 0.9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
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
