import 'dart:async';

import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class SummerMap extends World with HasGameRef<EcoGame> {
  late TiledComponent level;
  final 

  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load("summer.tmx", Vector2.all(16));

    add(level);


    return super.onLoad();
  }
}
