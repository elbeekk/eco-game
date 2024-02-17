import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../application/game/game_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinView extends StatelessWidget {
  const CoinView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          constraints: const BoxConstraints(maxHeight: 300, maxWidth: 450),
          height: state.energyOpen || state.ecoOpen || state.energyOpen
              ? MediaQuery.sizeOf(context).height * 0.3
              : 0,
          width: state.energyOpen || state.ecoOpen || state.energyOpen
              ? MediaQuery.sizeOf(context).width * 0.3
              : 0,
          color: Colors.redAccent,
          child: Text(
            'Google',
            style: GoogleFonts.vt323(fontSize: 45),
          ),
        );
      },
    );
  }
}
