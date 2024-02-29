import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

import '../../../../application/settings/settings_bloc.dart';

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
              BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, settingsState) {
                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('users')
                        .doc(LocalStorage.getMe()?.id ?? '')
                        .snapshots(),
                    builder: (context, snapshot) {
                      LocalStorage.setMe(
                          UserModel.fromJson(snapshot.data?.data() ?? {}));
                      return Text(
                        "${snapshot.data?['coins']}",
                        style: GoogleFonts.vt323(
                          color: Colors.yellow,
                          fontSize:
                              (24 + 2 * settingsState.textSize).toDouble(),
                        ),
                      );
                    },
                  );
                },
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
