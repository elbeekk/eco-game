import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/presentation/pages/buttons_layer/veiws/leaderboard_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeaderboardButton extends StatelessWidget {
  const LeaderboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const LeaderboardView();
                },
              );
            },
            icon: const Icon(
              Icons.leaderboard_outlined,
              color: Colors.orange,
            ));
      },
    );
  }
}
