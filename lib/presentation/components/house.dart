import 'dart:async';
import 'dart:ui';

import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Building extends SpriteComponent
    with HasGameRef<EcoGame>, KeyboardHandler, DragCallbacks {
  late final Vector2 dimensions;
Building({required this.dimensions, position}) : super(position: position);



  late final String imagePath;

  @override
  FutureOr<void> onLoad()async {
    await add(SpriteComponent(sprite: await Sprite.load('Egg_item.png'),position: position,size: dimensions),);
    // add(
    //   SpriteAnimationComponent.fromFrameData(
    //    await game.images.load('Free Chicken Sprites.png'),SpriteAnimationData.sequenced(amount: 2, stepTime: 10, textureSize: Vector2.all(15),texturePosition: position)
    //   ),
    // );
    return super.onLoad();
  }
}
