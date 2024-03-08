import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelarticons/pixel.dart';

class ProgressButton extends StatelessWidget {
  const ProgressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    content: FutureBuilder(future: Future((){
                      return true;
                    }), builder: (context, snapshot) {
                      return Text('data');
                    },),
                  );
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
