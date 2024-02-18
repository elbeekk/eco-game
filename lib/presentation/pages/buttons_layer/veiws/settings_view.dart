import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

import '../../../../application/settings/settings_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<GameBloc, GameState>(
                builder: (context, gameState) {
                  return IconButton(
                    onPressed: () {
                      context
                          .read<GameBloc>()
                          .add(const GameEvent.showSettings());
                    },
                    icon: const Icon(
                      Pixel.arrowleft,
                      color: Colors.blue,
                    ),
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, settingsState) {
                    return Text(
                      'Settings',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.vt323(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize:
                              (22 + 2 * settingsState.textSize).toDouble()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, settingsState) {
            return Text(
              "Text Size",
              style: GoogleFonts.vt323(
                  color: Colors.blue,
                  fontSize: (18 + 2 * settingsState.textSize).toDouble()),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () {
                    context
                        .read<SettingsBloc>()
                        .add(const SettingsEvent.decrement());
                  },
                  icon: const Icon(
                    Pixel.minus,
                    size: 18,
                    color: Colors.red,
                  ),
                );
              },
            ),
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingsState) {
                return Row(
                  children: [
                    Icon(
                      settingsState.textSize >= 1
                          ? Icons.square
                          : Icons.square_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                    Icon(
                      settingsState.textSize >= 2
                          ? Icons.square
                          : Icons.square_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                    Icon(
                      settingsState.textSize >= 3
                          ? Icons.square
                          : Icons.square_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                    Icon(
                      settingsState.textSize >= 4
                          ? Icons.square
                          : Icons.square_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                  ],
                );
              },
            ),
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingsState) {
                return IconButton(
                  onPressed: () {
                    context
                        .read<SettingsBloc>()
                        .add(const SettingsEvent.increment());
                  },
                  icon: const Icon(
                    Pixel.plus,
                    size: 18,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
