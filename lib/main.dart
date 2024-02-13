import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:eco_game/presentation/pages/overlay/OverlayButtons.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  EcoGame game = EcoGame();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget(
          game: game,
          overlayBuilderMap: {
            "OverlayButtons": (
              BuildContext context,
              EcoGame game,
            ) {
              return const OverlayButtons();
            }
          },
        ),
      ),
    ),
  );
}
