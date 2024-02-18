import 'dart:developer';

import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/application/user/user_bloc.dart';
import 'package:eco_game/presentation/pages/buildings_layer/new_buildings/new_buildings.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons_layer.dart';
import 'package:eco_game/presentation/pages/image_layer/image_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
        ),BlocProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settingsState) {
          return FGBGNotifier(
            onEvent: (value) async {
              if (value == FGBGType.background) {
                // context.read<SettingsBloc>().add(const GameEvent.musicMute());
              } else {
                // context.read<SettingsBloc>().add(const GameEvent.musicUnmute());
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
                      body: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      BlocBuilder<BuildingBloc, BuildingState>(
                        builder: (context, buildingState) {
                          return ImageLayer(children: [
                            ...List.generate(buildingState.newBuildings.length,
                                (index) {
                              final current = buildingState.newBuildings[index];
                              return NewBuilding(
                                building: current,
                              );
                            }),
                          ]);
                        },
                      ),
                      const ButtonsLayer(),
                    ],
                  )),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
