import 'dart:developer';

import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:shimmer/shimmer.dart';

class ExistingInfo extends StatelessWidget {
  final BuildingModel building;
  final BuildContext contekst;

  const ExistingInfo(
      {super.key, required this.building, required this.contekst});

  @override
  Widget build(BuildContext context) {
    final isGenerator = (building.energy ?? 0) > 0;
    return BlocProvider.value(
      value: contekst.read<SettingsBloc>(),
      child: BlocProvider.value(
        value: contekst.read<BuildingBloc>(),
        child: AlertDialog(
          scrollable: true,
          titlePadding: const EdgeInsets.all(5),
          backgroundColor: Colors.grey.shade100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
          actionsPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          actions: [
            Row(
              children: [
                Expanded(child: BlocBuilder<BuildingBloc, BuildingState>(
                  builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          context.read<BuildingBloc>().add(
                              BuildingEvent.removeExistingBuilding(
                                  building: building.copyWith(
                                      price: ((building.price ?? 0) * 0.5)
                                              .toInt() +
                                          (((building.isLed ?? false)
                                                      ? (building.price ?? 0) *
                                                          0.15
                                                      : 0) +
                                                  ((building.isRoof ?? false)
                                                      ? (building.price ?? 0) *
                                                          0.5
                                                      : 0))
                                              .toInt()),
                                  onError: (e) {},
                                  onSuccess: () {
                                    context
                                        .read<BuildingBloc>()
                                        .add(const BuildingEvent.getAll());
                                    Navigator.pop(context);
                                  }));
                        },
                        child: Text(
                          'Sell ${(building.price ?? 0) + ((building.isLed ?? false) ? (building.price ?? 0) * 0.15 : 0) + ((building.isRoof ?? false) ? (building.price ?? 0) * 0.5 : 0)}\$',
                          style: const TextStyle(color: Colors.white),
                        ));
                  },
                )),
              ],
            )
          ],
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
              if (!isGenerator ||
                  ((building.isRoof ?? false) || (building.isRoof ?? false)))
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            'Lightning',
                            style: GoogleFonts.vt323(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      "assets/images/png/light_bulb.png")),
                              Shimmer.fromColors(
                                  baseColor: Colors.orange,
                                  highlightColor: Colors.orange.withOpacity(.4),
                                  child:
                                      const Icon(Icons.double_arrow_rounded)),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      "assets/images/png/light_led.png")),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return MultiBlocProvider(
                                            providers: [
                                              BlocProvider.value(
                                                value: BlocProvider.of<
                                                    SettingsBloc>(contekst),
                                              ),
                                              BlocProvider.value(
                                                value: BlocProvider.of<
                                                    BuildingBloc>(contekst),
                                              ),
                                            ],
                                            child: AlertDialog(
                                              actions: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: BlocBuilder<
                                                          BuildingBloc,
                                                          BuildingState>(
                                                        builder:
                                                            (context, state) {
                                                          log(LocalStorage
                                                                      .getMe()
                                                                  ?.coins
                                                                  .toString() ??
                                                              '');
                                                          return ElevatedButton(
                                                            onPressed: (building
                                                                        .isLed ??
                                                                    false)
                                                                ? null
                                                                : (LocalStorage.getMe()?.coins ??
                                                                            0) <
                                                                        (building.price ??
                                                                                0) *
                                                                            0.2
                                                                    ? null
                                                                    : () {
                                                                        context.read<BuildingBloc>().add(BuildingEvent.upgradeLed(
                                                                            building: building,
                                                                            onSuccess: () {
                                                                              context.read<BuildingBloc>().add(
                                                                                    const BuildingEvent.getAll(),
                                                                                  );
                                                                              Navigator.pop(context);
                                                                            }));
                                                                      },
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green
                                                                            .shade300),
                                                            child: Text(
                                                              (building.isLed ??
                                                                      false)
                                                                  ? "Upgraded"
                                                                  : "Upgrade ${((building.price ?? 0) * 0.2).toInt()}\$",
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              // contentPadding:
                                              //     EdgeInsets.zero,
                                              content: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Lightning',
                                                      style: GoogleFonts.vt323(
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Image.asset(
                                                                "assets/images/png/light_bulb.png")),
                                                        Shimmer.fromColors(
                                                            baseColor:
                                                                Colors.orange,
                                                            highlightColor:
                                                                Colors.orange
                                                                    .withOpacity(
                                                                        .4),
                                                            child: const Icon(Icons
                                                                .double_arrow_rounded)),
                                                        SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Image.asset(
                                                                "assets/images/png/light_led.png")),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Shimmer.fromColors(
                                                      baseColor: Colors.cyan,
                                                      highlightColor: Colors
                                                          .cyan
                                                          .withOpacity(.5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .leaderboard_outlined,
                                                          ),
                                                          BlocBuilder<
                                                              SettingsBloc,
                                                              SettingsState>(
                                                            builder: (context,
                                                                settingsState) {
                                                              return Text(
                                                                " +${20} points",
                                                                style: GoogleFonts.vt323(
                                                                    fontSize: (19 +
                                                                            2 * settingsState.textSize)
                                                                        .toDouble()),
                                                              );
                                                            },
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Icon(
                                                            Pixel
                                                                .batterycharging,
                                                            color:
                                                                Colors.green),
                                                        BlocBuilder<
                                                            SettingsBloc,
                                                            SettingsState>(
                                                          builder: (context,
                                                              settingsState) {
                                                            return Text(
                                                              "+2 W/h",
                                                              style: GoogleFonts.vt323(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: (19 +
                                                                          2 * settingsState.textSize)
                                                                      .toDouble()),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxHeight: 200,
                                                              maxWidth: 300),
                                                      child: InteractiveViewer(
                                                        scaleEnabled: false,
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(
                                                              Pixel.infobox,
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                            const SizedBox(
                                                              width: 4,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                LocalData
                                                                    .upgradeLed,
                                                                style: GoogleFonts.vt323(
                                                                    fontSize:
                                                                        23,
                                                                    color: Colors
                                                                        .blue,
                                                                    height:
                                                                        0.9),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        backgroundColor: Colors.green.shade300),
                                    child: Text(
                                      (building.isLed ?? false)
                                          ? "Upgraded"
                                          : 'Upgrade ${((building.price ?? 0) * 0.2).toInt()}\$',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (!(building.name?.toLowerCase().contains('market') ??
                        false))
                      SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              'Roof',
                              style: GoogleFonts.vt323(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        '${(building.image ?? '').characters.skipLast(4)}f1.png')),
                                Shimmer.fromColors(
                                    baseColor: Colors.orange,
                                    highlightColor:
                                        Colors.orange.withOpacity(.4),
                                    child:
                                        const Icon(Icons.double_arrow_rounded)),
                                SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        '${(building.image ?? '').characters.skipLast(4)}f2.png')),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return MultiBlocProvider(
                                              providers: [
                                                BlocProvider.value(
                                                  value: BlocProvider.of<
                                                      SettingsBloc>(contekst),
                                                ),
                                                BlocProvider.value(
                                                  value: BlocProvider.of<
                                                      BuildingBloc>(contekst),
                                                ),
                                              ],
                                              child: AlertDialog(
                                                actions: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: BlocBuilder<
                                                            BuildingBloc,
                                                            BuildingState>(
                                                          builder:
                                                              (context, state) {
                                                            return ElevatedButton(
                                                              onPressed: (building
                                                                          .isRoof ??
                                                                      false)
                                                                  ? null
                                                                  : (LocalStorage.getMe()?.coins ??
                                                                              0) <
                                                                          (building.price ?? 0) *
                                                                              0.7
                                                                      ? null
                                                                      : () {
                                                                          context.read<BuildingBloc>().add(BuildingEvent.upgradeRoof(
                                                                              building: building,
                                                                              onSuccess: () {
                                                                                context.read<BuildingBloc>().add(
                                                                                      const BuildingEvent.getAll(),
                                                                                    );
                                                                                Navigator.pop(context);
                                                                              }));
                                                                        },
                                                              style: ElevatedButton
                                                                  .styleFrom(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                      backgroundColor: Colors
                                                                          .green
                                                                          .shade100),
                                                              child: Text(
                                                                (building.isRoof ??
                                                                        false)
                                                                    ? "Upgraded"
                                                                    : "Upgrade ${((building.price ?? 0) * 0.7).toInt()}\$",
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                // contentPadding:
                                                //     EdgeInsets.zero,
                                                content: SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Roof',
                                                        style:
                                                            GoogleFonts.vt323(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                              height: 50,
                                                              width: 50,
                                                              child: Image.asset(
                                                                  '${(building.image ?? '').characters.skipLast(4)}f1.png')),
                                                          Shimmer.fromColors(
                                                              baseColor: Colors
                                                                  .orange,
                                                              highlightColor:
                                                                  Colors
                                                                      .orange
                                                                      .withOpacity(
                                                                          .4),
                                                              child: const Icon(
                                                                  Icons
                                                                      .double_arrow_rounded)),
                                                          SizedBox(
                                                              height: 50,
                                                              width: 50,
                                                              child: Image.asset(
                                                                  '${(building.image ?? '').characters.skipLast(4)}f2.png')),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Shimmer.fromColors(
                                                        baseColor: Colors.cyan,
                                                        highlightColor: Colors
                                                            .cyan
                                                            .withOpacity(.5),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .leaderboard_outlined,
                                                            ),
                                                            BlocBuilder<
                                                                SettingsBloc,
                                                                SettingsState>(
                                                              builder: (context,
                                                                  settingsState) {
                                                                return Text(
                                                                  " +${40} points",
                                                                  style: GoogleFonts.vt323(
                                                                      fontSize: (19 +
                                                                              2 * settingsState.textSize)
                                                                          .toDouble()),
                                                                );
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                              Pixel
                                                                  .batterycharging,
                                                              color:
                                                                  Colors.green),
                                                          BlocBuilder<
                                                              SettingsBloc,
                                                              SettingsState>(
                                                            builder: (context,
                                                                settingsState) {
                                                              return Text(
                                                                "+10 W/h",
                                                                style: GoogleFonts.vt323(
                                                                    color: Colors
                                                                        .green,
                                                                    fontSize: (19 +
                                                                            2 * settingsState.textSize)
                                                                        .toDouble()),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        constraints:
                                                            const BoxConstraints(
                                                                maxHeight: 200,
                                                                maxWidth: 300),
                                                        child:
                                                            InteractiveViewer(
                                                          scaleEnabled: false,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Icon(
                                                                Pixel.infobox,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                              const SizedBox(
                                                                width: 4,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  LocalData
                                                                      .upgradeRoof,
                                                                  style: GoogleFonts.vt323(
                                                                      fontSize:
                                                                          23,
                                                                      color: Colors
                                                                          .blue,
                                                                      height:
                                                                          0.9),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          backgroundColor:
                                              Colors.green.shade300),
                                      child: Text(
                                        (building.isRoof ?? false)
                                            ? "Upgraded"
                                            : 'Upgrade ${((building.price ?? 0) * 0.7).toInt()}\$',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.leaderboard_outlined,
                        ),
                        BlocBuilder<SettingsBloc, SettingsState>(
                          builder: (context, settingsState) {
                            return Text(
                              " +${building.points ?? ''} points",
                              style: GoogleFonts.vt323(
                                  fontSize: (19 + 2 * settingsState.textSize)
                                      .toDouble()),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Pixel.batterycharging,
                        color: isGenerator ? Colors.green : Colors.red,
                      ),
                      BlocBuilder<SettingsBloc, SettingsState>(
                        builder: (context, settingsState) {
                          return Text(
                            " ${isGenerator ? "+" : ""}${building.energy} W/h",
                            style: GoogleFonts.vt323(
                                color: isGenerator ? Colors.green : Colors.red,
                                fontSize: (19 + 2 * settingsState.textSize)
                                    .toDouble()),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Pixel.clock,
                        color: Colors.orange,
                      ),
                      BlocBuilder<SettingsBloc, SettingsState>(
                        builder: (context, settingsState) {
                          return Text(
                            " ${Jiffy.parseFromDateTime(DateTime.fromMillisecondsSinceEpoch(int.parse(building.date ?? '0'))).fromNow()}",
                            style: GoogleFonts.vt323(
                                color: Colors.orange,
                                fontSize: (19 + 2 * settingsState.textSize)
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
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    constraints:
                        const BoxConstraints(maxHeight: 200, maxWidth: 300),
                    child: InteractiveViewer(
                      scaleEnabled: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
  }
}
