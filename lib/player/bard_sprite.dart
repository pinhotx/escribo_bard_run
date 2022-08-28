import 'package:bonfire/bonfire.dart';
import 'package:escribo_bard_run/config/map.dart' as map;

class BardSprite{
  static String fileLocation = 'player/bard_player.png';
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 0)
    ),
  );
  static  Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 0)
    ),
  );
  static  Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 2*map.spriteSize)
    ),
  );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 2*map.spriteSize)
    ), 
  );

  static Future<SpriteAnimation> get dieRight => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 10*map.spriteSize)
    ), 
  );

  static Future<SpriteAnimation> get dieLeft => SpriteAnimation.load(
    fileLocation, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 10*map.spriteSize)
    ), 
  );
}