import 'package:eco_game/application/game_bloc.dart';
import 'package:eco_game/presentation/pages/flame_layer/game.dart';
import 'package:eco_game/presentation/pages/flutter_layer/overlay.dart';
import 'package:eco_game/presentation/pages/splash/splash_google.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameBloc>(
      create: (context) => GameBloc(),
      child: Scaffold(
          body: Stack(
            children: [
              BlocBuilder<GameBloc, GameState>(
                buildWhen: (previous, current) => false,
                builder: (context, state) {
                  return GameWidget(
                    game: EcoGame(gameBloc: context.read<GameBloc>()),
                    loadingBuilder: (p0) {
                      return Center(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            color: Colors.green.withOpacity(.5),
                            strokeWidth: 1,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const FlutterLayer()
            ],
          )),
    );
  }
}
