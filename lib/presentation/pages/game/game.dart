import 'dart:async';

import 'package:eco_game/presentation/pages/seasons/summer.dart';
import 'package:flame/camera.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

class EcoGame extends FlameGame with DragCallbacks, ScaleDetector {
  late final CameraComponent cam;
  final world = SummerMap();
  double lastScale = 1;

  @override
  void onScaleUpdate(ScaleUpdateInfo info) {
    print("scale ${info.scale.global}");
    cam.viewfinder.zoom = info.raw.scale == 0 ? lastScale : info.raw.scale;
    lastScale = cam.viewfinder.zoom;
    super.onScaleUpdate(info);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    /// Vector2 sizes
    Vector2 camPosition = cam.viewfinder.position;
    Vector2 mapSize = Vector2(80 * 16, 60 * 16);
    Vector2 screenSize = size;
    Vector2 change = Vector2(event.localDelta.x * -1, event.localDelta.y * -1);

    /// vertical move
    if (camPosition.y > 50 && camPosition.y < mapSize.y - screenSize.y) {
      cam.moveBy(Vector2(0, change.y));
    } else if (camPosition.y < 50 && change.y > 0) {
      cam.moveBy(Vector2(0, change.y));
    } else if (camPosition.y > mapSize.y - screenSize.y && change.y < 0) {
      cam.moveBy(Vector2(0, change.y));
    }

    /// horizontal move
    if (camPosition.x > 50 && camPosition.x < mapSize.x - screenSize.x) {
      cam.moveBy(Vector2(change.x, 0));
    } else if (camPosition.x < 50 && change.x > 0) {
      cam.moveBy(Vector2(change.x, 0));
    } else if (camPosition.x > mapSize.x - screenSize.x && change.x < 0) {
      cam.moveBy(Vector2(change.x, 0));
    }

    super.onDragUpdate(event);
  }

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        world: world, width: 700, height: 360);

    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    overlays.add("OverlayButtons");
    return super.onLoad();
  }
}
