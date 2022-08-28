import 'package:bonfire/bonfire.dart';
import 'package:escribo_bard_run/config/map.dart' as map;

class KnightSprite{
  static String knightSpriteFile = 'npcs/knight.png';
  static String attackAnimationFile = 'fx/sword_iron.png';
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 0)
    ),
  );
  static  Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 0)
    ),
  );
  static  Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 2*map.spriteSize)
    ),
  );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 2*map.spriteSize)
    ),
  );

  static Future<SpriteAnimation> get receiveDamageRight => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 5*map.spriteSize)
    ), 
  );

  static Future<SpriteAnimation> get receiveDamageLeft => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 5*map.spriteSize)
    ), 
  );  




  static Future<SpriteAnimation> get faintRight => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 6*map.spriteSize)
    ), 
  );

  static Future<SpriteAnimation> get faintLeft => SpriteAnimation.load(
    knightSpriteFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(4*map.spriteSize, 6*map.spriteSize)
    ), 
  );  
  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
    attackAnimationFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, map.spriteSize)
    ), 
  );  
  static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
    attackAnimationFile, 
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.5, 
      textureSize: Vector2(map.spriteSize, map.spriteSize), 
      texturePosition: Vector2(0, 2*map.spriteSize)
    ), 
  );  
}