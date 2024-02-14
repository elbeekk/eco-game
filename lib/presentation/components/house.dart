import 'dart:async';
import 'dart:ui';

import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Building extends SpriteAnimationGroupComponent with HasGameRef<EcoGame>, KeyboardHandler,DragCallbacks {
  late final SpriteAnimation myAnimation;


  @override
  FutureOr<void> onLoad() {

    _loadAnimations();


    return super.onLoad();
  }

  void _loadAnimations() {
    // myAnimation = SpriteAnimation.fromFrameData(game.assets., data)
  }
}
