import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/presentation/pages/flutter_layer/flutter_layer.dart';
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
        BlocProvider<GameBloc>(
          create: (context) => GameBloc(),
        ),
        BlocProvider(
          create: (context) => ShopBloc(),
        ),
        BlocProvider(
          create: (context) => BuildingBloc(),
        ),
      ],
      child: BlocBuilder<GameBloc, GameState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return FGBGNotifier(
            onEvent: (value) async {
              if (value == FGBGType.background) {
                context.read<GameBloc>().add(const GameEvent.musicMute());
              } else {
                context.read<GameBloc>().add(const GameEvent.musicUnmute());
              }
            },
            child: BlocBuilder<GameBloc, GameState>(
              buildWhen: (previous, current) => false,
              builder: (context, state) {
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
                      GestureDetector(
                        onTap: () {
                          context
                              .read<GameBloc>()
                              .add(const GameEvent.closeAll());
                        },
                        child: InteractiveViewer(
                          constrained: false,
                          onInteractionUpdate: (details) {
                            print(details.focalPointDelta.toString());
                          },
                          child: Container(
                            height: 1000,
                            width: 1000,
                            color: Colors.red,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/png/summer.png",
                                  fit: BoxFit.cover,
                                  scale: .1,
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const FlutterLayer(),
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
