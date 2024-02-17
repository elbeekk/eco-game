import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

class CoinButton extends StatelessWidget {
  const CoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<GameBloc>().add(const GameEvent.showMoney());
          },
          child: Row(
            children: [
              Text(
                "1230${state.money}",
                style: GoogleFonts.vt323(
                  color: Colors.yellow,
                  fontSize: (24 + 2 * state.flutterScale).toDouble(),
                ),
              ),
              const Icon(
                Pixel.coin,
                color: Colors.yellow,
              ),
            ],
          ),
        );
      },
    );
  }
}
