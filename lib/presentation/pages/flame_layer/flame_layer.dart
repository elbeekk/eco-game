import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'eco_game.dart';


class FlameLayer extends StatelessWidget {
  const FlameLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
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
    );
  }
}
