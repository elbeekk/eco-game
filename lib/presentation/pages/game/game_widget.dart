import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:eco_game/presentation/pages/overlay/overlay.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';



class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  EcoGame game = EcoGame();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GameWidget(
        game: game,
        overlayBuilderMap: {
          "OverlayButtons": (
              BuildContext context,
              EcoGame game,
              ) {
            return const OverlayButtons();
          }
        },
      )
    );
  }
}
