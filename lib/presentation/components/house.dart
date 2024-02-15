import 'dart:async';
import 'package:eco_game/presentation/pages/flame_layer/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/sprite.dart';

class Building extends SpriteAnimationComponent
    with HasGameRef<EcoGame>, KeyboardHandler, DragCallbacks {

  @override
  FutureOr<void> onLoad()async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('game_assets/character/spritesheets/Original/Without Outline/MiniHunter.png'),
      srcSize: Vector2.all(40),
      spacing: 5,
    );
    final spriteSize = Vector2.all(50);
    print('${spriteSheet.rows} rows');
    print('${spriteSheet.columns} columns');
    print('${spriteSheet.srcSize} srcSize');

    final animation = spriteSheet.createAnimation(row: 11, stepTime: 0.3,loop: false);
    final component1 = SpriteAnimationComponent(
      animation: animation,
      removeOnFinish: false,
      position: Vector2.all(100),
      size: spriteSize,
    );
    add(
        component1
      // ..add(
      // MoveEffect.to(
      //   Vector2.all(200),
      //   EffectController(
      //     duration: 10,
      //     reverseDuration: 10,
      //     infinite: true,
      //     curve: Curves.linear,
      //   ),
      // ),
      // ),
    );
    return super.onLoad();
  }
}
