import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelarticons/pixel.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              context.read<GameBloc>().add(const GameEvent.showMenu());
            },
            icon: Icon(
              state.menuOpen ? Pixel.arrowleft : Pixel.arrowright,
              color: Colors.orange,
            ));
      },
    );
  }
}
