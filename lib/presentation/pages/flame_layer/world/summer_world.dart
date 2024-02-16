import 'dart:async';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/presentation/components/house.dart';
import 'package:eco_game/presentation/pages/flame_layer/game/eco_game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/sprite.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flame_tiled/flame_tiled.dart';

class SummerWorld extends World with HasGameRef<EcoGame>,TapCallbacks{
  late TiledComponent level;
  late Building building;

  @override
  void onTapUp(TapUpEvent event) {
    gameRef.gameBloc.add(const GameEvent.closeAll());
    super.onTapUp(event);
  }
  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load("summer.tmx", Vector2.all(16));
    // building = Building(dimensions: Vector2(100, 100),position: Vector2.all(100));
    await add(level);


    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('game_assets/character/spritesheets/Original/Without Outline/MiniHunter.png'),
      srcSize: Vector2.all(30),

      spacing: 5,
    );
    final spriteSize = Vector2.all(70);
    print('${spriteSheet.rows} rows');
    print('${spriteSheet.columns} columns');
    print('${spriteSheet.srcSize} srcSize');

    final animation = spriteSheet.createAnimation(row: 0,to: 3, stepTime: 0.3,loop: true);
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
