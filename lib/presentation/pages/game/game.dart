import 'dart:async';
import 'package:eco_game/presentation/pages/world/world.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

class EcoGame extends FlameGame
    with DragCallbacks {
  late final CameraComponent cam;
  late SummerMap summerMap;
  double lastScale = 1;
  SpriteComponent house = SpriteComponent();

  /// change view
  @override
  void onDragUpdate(DragUpdateEvent event) {
    /// Vector2 sizes
    Vector2 camPosition = cam.viewfinder.position;
    Vector2 mapSize = Vector2(100 * 16, 100 * 16);
    Vector2 screenSize = size;
    Vector2 change = Vector2(event.localDelta.x * -1, event.localDelta.y * -1);

    /// vertical move
    if (camPosition.y > 10 && camPosition.y < mapSize.y - screenSize.y) {
      cam.moveBy(Vector2(0, change.y));
    } else if (camPosition.y < 10 && change.y > 0) {
      cam.moveBy(Vector2(0, change.y));
    } else if (camPosition.y > mapSize.y - screenSize.y && change.y < 0) {
      cam.moveBy(Vector2(0, change.y));
    }

    /// horizontal move
    if (camPosition.x > 10 && camPosition.x < mapSize.x - screenSize.x) {
      cam.moveBy(Vector2(change.x, 0));
    } else if (camPosition.x < 10 && change.x > 0) {
      cam.moveBy(Vector2(change.x, 0));
    } else if (camPosition.x > mapSize.x - screenSize.x && change.x < 0) {
      cam.moveBy(Vector2(change.x, 0));
    }

    super.onDragUpdate(event);
  }



  /// load the game
  @override
  FutureOr<void> onLoad() async {
    summerMap = SummerMap();

    cam = CameraComponent(
      world: summerMap,
    );

    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam]);

    await add(summerMap);

    // await add(house);
    overlays.add("OverlayButtons");
    return super.onLoad();
  }
}
