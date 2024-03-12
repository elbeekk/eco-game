import 'dart:async';
import 'dart:developer';

import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/message/message_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:eco_game/presentation/pages/buildings_layer/existing_buildings/existing_building.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons_layer.dart';
import 'package:eco_game/presentation/pages/image_layer/image_layer.dart';
import 'package:eco_game/presentation/pages/message/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shimmer/shimmer.dart';

import '../../../infrastructure/models/class/building.dart';
import '../buildings_layer/constructing_buildings/constructing_buildings.dart';
import '../buildings_layer/pending_buildings/pending_building.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BuildingBloc(),
        ),
        BlocProvider(
          create: (context) => GameBloc(),
        ),
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
        BlocProvider(
          create: (context) => ShopBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => MessageBloc(),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settingsState) {
          return FGBGNotifier(
            onEvent: (value) async {
              if (value == FGBGType.background) {
                context
                    .read<SettingsBloc>()
                    .add(const SettingsEvent.musicMute());
              } else {
                context.read<BuildingBloc>().add(
                      const BuildingEvent.getAll(),
                    );
                context
                    .read<SettingsBloc>()
                    .add(const SettingsEvent.musicUnmute());
              }
            },
            child: BlocBuilder<GameBloc, GameState>(
              builder: (context, gameState) {
                return RawKeyboardListener(
                  autofocus: true,
                  focusNode: FocusNode(),
                  onKey: (event) {
                    // if (event.logicalKey == LogicalKeyboardKey.tab) {
                    //   context.read<GameBloc>().add(const GameEvent.showMenu());
                    // }
                    // if (event.logicalKey == LogicalKeyboardKey.space) {
                    //   context.read<GameBloc>().add(const GameEvent.showShop());
                    // }
                    // if (event.character == 'c') {
                    //   context.read<GameBloc>().add(const GameEvent.showMoney());
                    // }
                  },
                  child: Scaffold(
                    backgroundColor: const Color(0xffC0D470),
                    body: Stack(
                      children: [
                        BlocBuilder<BuildingBloc, BuildingState>(
                          builder: (context, buildingState) {
                            // if (DateTime.now().minute.isOdd) {
                            //   context.read<BuildingBloc>().add(
                            //         const BuildingEvent.getAll(),
                            //       );
                            // }
                            double incomeAll = 0;
                            double consumptionAll = 0;
                            Map<String, double> incomeData = {};
                            Map<String, double> consumptionData = {};
                            for (var element
                                in buildingState.existingBuildings) {
                              if ((element.energy ?? 0) >= 0) {
                                incomeAll +=
                                    element.energy?.abs().toDouble() ?? 0;
                                incomeData.update(
                                    element.name ?? '',
                                    (value) =>
                                        value +
                                        (element.energy ?? 0).abs().toDouble(),
                                    ifAbsent: () {
                                  return element.energy?.abs().toDouble() ?? 0;
                                });
                              } else {
                                consumptionAll +=
                                    element.energy?.abs().toDouble() ?? 0;
                                consumptionData.update(
                                    element.name ?? '',
                                    (value) =>
                                        value +
                                        (element.energy ?? 0).abs().toDouble(),
                                    ifAbsent: () {
                                  // log((element.energy?.abs().toDouble() ?? 0)
                                  //     .toString());
                                  return element.energy?.abs().toDouble() ?? 0;
                                });
                              }
                            }
                            // log("income => $incomeData");
                            // log("consumption => $consumptionData");
                            return ImageLayer(children: [
                              ...List.generate(
                                  buildingState.existingBuildings.length,
                                  (index) {
                                final current = buildingState
                                    .existingBuildings.reversed
                                    .toList()[index];
                                return ExistingBuilding(
                                  building: current,
                                  contekst: context,
                                );
                              }),
                              if (incomeAll < consumptionAll)
                                ...List.generate(
                                    buildingState.existingBuildings.length,
                                    (index) {
                                  final current = buildingState
                                      .existingBuildings.reversed
                                      .toList()[index];
                                  return Positioned(
                                    top: (current.positionY ?? 0) +
                                        (current.bottom ?? 0) -
                                        (current.height ?? 0) * 0.9,
                                    left: (current.positionX ?? 0) +
                                        (current.left ?? 0) +
                                        (current.width ?? 0) * 0.2,
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            title: const Text(
                                              'Not Enough Energy',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            content: Text(
                                              LocalData.notEnoughEnergy,
                                              style:
                                                  const TextStyle(fontSize: 17),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7))),
                                                  child: const Text(
                                                    'Ok',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ))
                                            ],
                                          ),
                                        );
                                      },
                                      child: Shimmer.fromColors(
                                        highlightColor: Colors.orange.shade400,
                                        baseColor: Colors.grey.shade700,
                                        child: const Icon(
                                          MaterialCommunityIcons.lightning_bolt,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ...List.generate(
                                buildingState.constructingBuildings.length,
                                (index) {
                                  final current = buildingState
                                      .constructingBuildings[index];
                                  return ConstructingBuilding(
                                    building: current,
                                  );
                                },
                              ),
                              ...List.generate(
                                  buildingState.pendingBuildings.length,
                                  (index) {
                                final current =
                                    buildingState.pendingBuildings[index];
                                return PendingBuilding(
                                  building: current,
                                );
                              }),
                            ]);
                          },
                        ),
                        const ButtonsLayer(),
                        Message()
                        // BlocBuilder<MessageBloc, MessageState>(
                        //   buildWhen: (previous, current) =>
                        //       previous.currentMessage?.toRawJson() !=
                        //       current.currentMessage?.toRawJson(),
                        //   builder: (context, state) {
                        //     context.read<MessageBloc>().add(
                        //           MessageEvent.setIntroMessages(
                        //               onError: (e) {}, onSuccess: () {}),
                        //         );
                        //     log(state.currentMessage?.toJson().toString() ??
                        //         '');
                        //     if (state.messages.isNotEmpty) {
                        //       if (state.currentMessage?.id == "6") {
                        //         if (gameState.shopOpen) {
                        //           return Message(
                        //               image:
                        //                   state.currentMessage?.character ?? '',
                        //               message:
                        //                   state.currentMessage?.text ?? '');
                        //         }
                        //         log(LocalData.introMessages[5].toJson().toString());
                        //         return Message(
                        //             image:
                        //                 LocalData.introMessages[4].character ??
                        //                     '',
                        //             message:
                        //                 LocalData.introMessages[4].text ?? '');
                        //       }
                        //       return Message(
                        //           image: state.currentMessage?.character ?? '',
                        //           message: state.currentMessage?.text ?? '');
                        //     }
                        //     return const SizedBox.shrink();
                        //   },
                        // ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
