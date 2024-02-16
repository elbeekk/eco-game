
import 'package:eco_game/application/game_bloc.dart';
import 'package:eco_game/presentation/pages/flame_audio/audio.dart';
import 'package:eco_game/presentation/pages/flame_layer/flame_layer.dart';
import 'package:eco_game/presentation/pages/flutter_layer/overlay.dart';
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
    return BlocProvider<GameBloc>(
      create: (context) => GameBloc(),
      child: FGBGNotifier(
        onEvent: (value) async {
          print("object ${value}");
          if(value==FGBGType.background){
           await  AudioService.stopAll();
            print("object stopped");
          }
        },
        child: const Scaffold(
            body: Stack(
              children: [
                FlameLayer(),
                FlutterLayer(),
              ],
            )),
      ),
    );
  }
}
