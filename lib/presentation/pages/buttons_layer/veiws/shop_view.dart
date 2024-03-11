import 'dart:developer';

import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/services/constants.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../application/building/building_bloc.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, gameState) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          height:
              gameState.shopOpen ? MediaQuery.sizeOf(context).height * 0.44 : 0,
          constraints: const BoxConstraints(maxHeight: 190),
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            children: [
              Expanded(
                child: BlocBuilder<ShopBloc, ShopState>(
                  builder: (context, shopState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            constraints: const BoxConstraints(maxHeight: 45),
                            height: MediaQuery.sizeOf(context).height * 0.11,
                            child: BlocBuilder<ShopBloc, ShopState>(
                              builder: (context, shopState) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: ShopCategory.values.length,
                                  itemBuilder: (context, index) {
                                    final current = ShopCategory.values[index];
                                    return GestureDetector(
                                      onTap: () {
                                        context.read<ShopBloc>().add(
                                            ShopEvent.changeCategory(current));
                                      },
                                      child: AnimatedOpacity(
                                        opacity: shopState.category == current
                                            ? 1
                                            : 0.5,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        child: Container(
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                const BorderRadius.vertical(
                                              top: Radius.circular(10),
                                            ),
                                            border: Border.all(
                                                color: shopState.category ==
                                                        current
                                                    ? Colors.orange.shade900
                                                        .withOpacity(.5)
                                                    : Colors.transparent,
                                                width: 3),
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 1),
                                          child: Center(
                                            child: BlocBuilder<SettingsBloc,
                                                SettingsState>(
                                              builder:
                                                  (context, settingsState) {
                                                return Text(
                                                  current.name.toUpperCase(),
                                                  style: GoogleFonts.vt323(
                                                      fontSize: (16 +
                                                              2 *
                                                                  settingsState
                                                                      .textSize)
                                                          .toDouble()),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            )),
                        BlocBuilder<ShopBloc, ShopState>(
                          builder: (context, shopState) {
                            return Expanded(
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount:
                                    shopState.category == ShopCategory.houses
                                        ? LocalData.houses.length
                                        : shopState.category ==
                                                ShopCategory.generators
                                            ? LocalData.generators.length
                                            : LocalData.trees.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  List<BuildingModel> shopItems =
                                      shopState.category == ShopCategory.houses
                                          ? LocalData.houses
                                          : shopState.category ==
                                                  ShopCategory.generators
                                              ? LocalData.generators
                                              : LocalData.trees;
                                  shopItems.sort(
                                    (a, b) {
                                      return (a.price ?? 0)
                                          .compareTo(b.price ?? 0);
                                    },
                                  );
                                  final current = shopItems[index];

                                  final canBuy =
                                      (LocalStorage.getMe()?.coins ?? 0) >=
                                          (current.price ?? 0);
                                  return Opacity(
                                    opacity: canBuy ? 1 : .7,
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<ShopBloc>()
                                            .add(ShopEvent.select(current));
                                      },
                                      child: BlocBuilder<ShopBloc, ShopState>(
                                        builder: (context, shopState) {
                                          return Container(
                                            margin: const EdgeInsets.all(3),
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: canBuy
                                                    ? Colors.grey.shade100
                                                    : Colors.grey.shade300,
                                                border: Border.all(
                                                    color: shopState.selected
                                                                ?.name ==
                                                            current.name
                                                        ? Colors.orange.shade900
                                                            .withOpacity(.5)
                                                        : Colors.transparent,
                                                    width: 3)),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    child: Image.asset(
                                                        current.image ?? '')),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Pixel.coin,
                                                      color: Colors.orangeAccent
                                                          .shade200,
                                                    ),
                                                    BlocBuilder<SettingsBloc,
                                                        SettingsState>(
                                                      builder: (context,
                                                          settingsState) {
                                                        return Text(
                                                          current.price
                                                                  .toString() ??
                                                              '',
                                                          style: GoogleFonts.vt323(
                                                              color:
                                                                  Colors.orange,
                                                              fontSize: (19 +
                                                                      2 *
                                                                          settingsState
                                                                              .textSize)
                                                                  .toDouble()),
                                                        );
                                                      },
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
              BlocListener<ShopBloc, ShopState>(
                child: const SizedBox.shrink(),
                listenWhen: (previous, current) {
                  return previous.selected?.toRawJson() !=
                      current.selected?.toRawJson();
                },
                listener: (listenerContext, shopState) {
                  if (shopState.selected?.image != null) {
                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        bool isGenerator =
                            (shopState.selected?.energy ?? 0) > 0;
                        return BlocProvider.value(
                          value: context.read<SettingsBloc>(),
                          child: BlocProvider.value(
                            value: context.read<BuildingBloc>(),
                            child: AlertDialog(
                              scrollable: true,
                              titlePadding: const EdgeInsets.all(5),
                              actions: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: BlocBuilder<BuildingBloc,
                                          BuildingState>(
                                        builder: (buildingCon, buildingState) {
                                          return ElevatedButton(
                                              onPressed: (LocalStorage.getMe()
                                                              ?.coins ??
                                                          0) <
                                                      (shopState.selected
                                                              ?.price ??
                                                          0)
                                                  ? null
                                                  : () {
                                                      context
                                                          .read<BuildingBloc>()
                                                          .add(
                                                            BuildingEvent
                                                                .addPendingBuilding(
                                                              building: shopState.selected?.copyWith(
                                                                      date: DateTime
                                                                              .now()
                                                                          .millisecondsSinceEpoch
                                                                          .toString(),
                                                                      positionY: gameState
                                                                              .currentPos
                                                                              .dy +
                                                                          MediaQuery.sizeOf(context).height /
                                                                              2 -
                                                                          100,
                                                                      positionX: gameState
                                                                              .currentPos
                                                                              .dx +
                                                                          MediaQuery.sizeOf(context).width /
                                                                              2 -
                                                                          50,) ??
                                                                  BuildingModel(),
                                                              onError: (String
                                                                  error) {},
                                                              onSuccess: () {
                                                                Navigator.pop(context);
                                                              },
                                                            ),
                                                          );
                                                      // context
                                                      //     .read<ShopBloc>()
                                                      //     .add(
                                                      //       ShopEvent.select(
                                                      //         shopState
                                                      //                 .selected ??
                                                      //             BuildingModel(),
                                                      //       ),
                                                      //     );
                                                    },
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  backgroundColor:
                                                      Colors.green.shade400),
                                              child: buildingState.isBuyLoading
                                                  ? const SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: Colors.white,
                                                        strokeWidth: 1,
                                                      ),
                                                    )
                                                  : Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Buy ${shopState.selected?.price} ",
                                                          style:
                                                              GoogleFonts.vt323(
                                                                  fontSize: 24,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                        const Icon(
                                                          Pixel.coin,
                                                          color: Colors.yellow,
                                                        )
                                                      ],
                                                    ));
                                        },
                                      ),
                                    )
                                  ],
                                )
                              ],
                              backgroundColor: Colors.grey.shade100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      "${shopState.selected?.name}",
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
                                  Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      constraints: const BoxConstraints(
                                          maxHeight: 200, maxWidth: 150),
                                      child: Image.asset(
                                        "${shopState.selected?.image}",
                                        fit: BoxFit.fitHeight,
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  " +${shopState.selected?.points} points",
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
                                          BlocBuilder<SettingsBloc,
                                              SettingsState>(
                                            builder: (context, settingsState) {
                                              return Text(
                                                " ${isGenerator ? "+" : ""}${shopState.selected?.energy} W/h",
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
                                          BlocBuilder<SettingsBloc,
                                              SettingsState>(
                                            builder: (context, settingsState) {
                                              return Text(
                                                " ${shopState.selected?.duration} h",
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
                                            MediaQuery.sizeOf(context).height *
                                                0.3,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
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
                                                  "${shopState.selected?.description}",
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
                    ).whenComplete(() {
                      context.read<ShopBloc>().add(ShopEvent.select(
                          shopState.selected ?? BuildingModel()));
                    });
                  }
                },
              ),

              // BlocBuilder<ShopBloc, ShopState>(
              //   builder: (context, shopState) {
              //     bool isGenerator = (shopState.selected?.energy ?? 0) > 0;
              //     return shopState.selected != null
              //         ? Column(
              //             children: [
              //               Expanded(
              //                 child: Container(
              //                   width: MediaQuery.sizeOf(context).width * 0.25,
              //                   constraints: BoxConstraints(maxWidth: 300,minWidth: 150),
              //                   decoration: BoxDecoration(
              //                       color: Colors.black.withOpacity(.5)),
              //                   child: Column(
              //                     children: [
              //                       Text(
              //                         shopState.selected?.name ?? '',
              //                         style: GoogleFonts.vt323(
              //                             fontSize: (22 + 2 * 2
              //                                 // gameState.flutterScale
              //                                 )
              //                                 .toDouble(),
              //                             color: Colors.white),
              //                       ),
              //                       Expanded(
              //                         flex: 5,
              //                         child: Padding(
              //                           padding: const EdgeInsets.only(
              //                               right: 5, left: 5),
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                   child: Image.asset(
              //                                       shopState.selected?.image ??
              //                                           '')),
              //                               const SizedBox(
              //                                 width: 5,
              //                               ),
              //                               SingleChildScrollView(
              //                                 child: Column(
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     // if ((shopState.selected
              //                                     //             ?.people ??
              //                                     //         0) >
              //                                     //     0)
              //                                     //   Row(
              //                                     //     children: [
              //                                     //       const Icon(
              //                                     //         Pixel.users,
              //                                     //         color: Colors.blue,
              //                                     //       ),
              //                                     //       BlocBuilder<
              //                                     //           SettingsBloc,
              //                                     //           SettingsState>(
              //                                     //         builder: (context,
              //                                     //             settingsState) {
              //                                     //           return Text(
              //                                     //             shopState.selected
              //                                     //                     ?.people
              //                                     //                     .toString() ??
              //                                     //                 '',
              //                                     //             style: GoogleFonts.vt323(
              //                                     //                 color: Colors
              //                                     //                     .blue,
              //                                     //                 fontSize: (19 +
              //                                     //                         2 * settingsState.textSize)
              //                                     //                     .toDouble()),
              //                                     //           );
              //                                     //         },
              //                                     //       ),
              //                                     //     ],
              //                                     //   ),
              //                                     Row(
              //                                       children: [
              //                                         Icon(
              //                                           Pixel.batterycharging,
              //                                           color: isGenerator
              //                                               ? Colors.green
              //                                               : Colors.red,
              //                                         ),
              //                                         BlocBuilder<SettingsBloc,
              //                                             SettingsState>(
              //                                           builder: (context,
              //                                               settingsState) {
              //                                             return Text(
              //                                               "${isGenerator ? "+" : ""}${shopState.selected?.energy} W/h",
              //                                               style: GoogleFonts.vt323(
              //                                                   color: isGenerator
              //                                                       ? Colors
              //                                                           .green
              //                                                       : Colors
              //                                                           .red,
              //                                                   fontSize: (19 +
              //                                                           2 * settingsState.textSize)
              //                                                       .toDouble()),
              //                                             );
              //                                           },
              //                                         ),
              //                                       ],
              //                                     ),
              //                                     Row(
              //                                       children: [
              //                                         const Icon(
              //                                           Pixel.clock,
              //                                           color: Colors.orange,
              //                                         ),
              //                                         BlocBuilder<SettingsBloc,
              //                                             SettingsState>(
              //                                           builder: (context,
              //                                               settingsState) {
              //                                             return Text(
              //                                               "${shopState.selected?.duration} h",
              //                                               style: GoogleFonts.vt323(
              //                                                   color: Colors
              //                                                       .orange,
              //                                                   fontSize: (19 +
              //                                                           2 * settingsState.textSize)
              //                                                       .toDouble()),
              //                                             );
              //                                           },
              //                                         )
              //                                       ],
              //                                     ),
              //                                   ],
              //                                 ),
              //                               )
              //                             ],
              //                           ),
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         height: 4,
              //                       ),
              //                       Expanded(
              //                         flex: 2,
              //                         child: Row(
              //                           children: [
              //                             Expanded(
              //                               child: BlocBuilder<GameBloc,
              //                                   GameState>(
              //                                 builder: (context, gameState) {
              //                                   return BlocBuilder<BuildingBloc,
              //                                       BuildingState>(
              //                                     builder: (context, state) {
              //                                       return ElevatedButton(
              //                                         onPressed: () {
              //                                           context
              //                                               .read<
              //                                                   BuildingBloc>()
              //                                               .add(
              //                                                 BuildingEvent
              //                                                     .addNewBuilding(
              //                                                   shopState.selected?.copyWith(
              //                                                           date: DateTime.now()
              //                                                               .millisecondsSinceEpoch
              //                                                               .toString(),
              //                                                           positionY: gameState.currentPos.dy +
              //                                                               MediaQuery.sizeOf(context).height /
              //                                                                   2 -
              //                                                               100,
              //                                                           positionX: gameState.currentPos.dx +
              //                                                               MediaQuery.sizeOf(context).width /
              //                                                                   2 -
              //                                                               50) ??
              //                                                       BuildingModel(),
              //                                                 ),
              //                                               );
              //                                         },
              //                                         style: ElevatedButton.styleFrom(
              //                                             backgroundColor:
              //                                                 Colors.green,
              //                                             shape: RoundedRectangleBorder(
              //                                                 borderRadius:
              //                                                     BorderRadius
              //                                                         .circular(
              //                                                             4))),
              //                                         child: Row(
              //                                           mainAxisAlignment:
              //                                               MainAxisAlignment
              //                                                   .center,
              //                                           children: [
              //                                             const Icon(
              //                                               Pixel.coin,
              //                                               color:
              //                                                   Colors.yellow,
              //                                             ),
              //                                             BlocBuilder<
              //                                                 SettingsBloc,
              //                                                 SettingsState>(
              //                                               builder: (context,
              //                                                   settingsState) {
              //                                                 return Text(
              //                                                   shopState
              //                                                           .selected
              //                                                           ?.price
              //                                                           .toString() ??
              //                                                       '',
              //                                                   style: GoogleFonts.vt323(
              //                                                       color: Colors
              //                                                           .yellow,
              //                                                       fontSize: (21 +
              //                                                               2 * settingsState.textSize)
              //                                                           .toDouble()),
              //                                                 );
              //                                               },
              //                                             ),
              //                                           ],
              //                                         ),
              //                                       );
              //                                     },
              //                                   );
              //                                 },
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox.shrink();
              //   },
              // ),
            ],
          ),
        );
      },
    );
  }
}
