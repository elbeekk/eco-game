import 'dart:developer';

import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/message/message_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/application/user/user_bloc.dart';
import 'package:eco_game/presentation/pages/buildings_layer/in_process_buildings/in_process_buildings.dart';
import 'package:eco_game/presentation/pages/buildings_layer/new_buildings/new_buildings.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons_layer.dart';
import 'package:eco_game/presentation/pages/image_layer/image_layer.dart';
import 'package:eco_game/presentation/pages/message/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';

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
          create: (context) => UserBloc(),
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
                            return ImageLayer(children: [
                              ...List.generate(
                                  buildingState.inProcessBuildings.length,
                                  (index) {
                                final current =
                                    buildingState.inProcessBuildings[index];
                                return InProcessBuildings(
                                  building: current,
                                );
                              }),
                              ...List.generate(
                                  buildingState.newBuildings.length, (index) {
                                final current =
                                    buildingState.newBuildings[index];
                                return NewBuilding(
                                  building: current,
                                );
                              }),
                            ]);
                          },
                        ),
                        BlocBuilder<MessageBloc, MessageState>(
                          builder: (context, state) {
                            context.read<MessageBloc>().add(
                                  MessageEvent.setIntroMessages(
                                      onError: (e) {}, onSuccess: () {
                                  }),
                                );
                            if (state.currentMessage == null) {
                              return const ButtonsLayer();
                            }
                            return Message(
                                image: state.currentMessage?.character ?? '',
                                message: state.currentMessage?.text ?? '');
                          },
                        ),
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
