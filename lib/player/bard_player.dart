import 'package:bonfire/bonfire.dart';
import 'package:escribo_bard_run/player/bard_sprite.dart';
import 'package:escribo_bard_run/config/map.dart' as map;
import 'package:escribo_bard_run/config/attributes.dart' as attributes;


class BardPlayer extends SimplePlayer with ObjectCollision{
  static double playerSize = map.entitySize;
  static double playerHitBoxSize = map.tileSize*0.75;
  BardPlayer(Vector2 position) : super(
    position: position,
    size: Vector2(playerSize, playerSize),
    animation: SimpleDirectionAnimation(
      idleLeft: BardSprite.idleLeft,
      runLeft: BardSprite.runLeft,
      idleRight: BardSprite.idleRight, 
      runRight: BardSprite.runRight,
    ), 
    speed: attributes.playerSpeed, 
    life: 8,
  ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(playerHitBoxSize, playerHitBoxSize),
        align: Vector2(
          (playerSize - playerHitBoxSize)/2, 
          (playerSize - playerHitBoxSize)/2 + 2
        ),
      ),
    ]));
  }

  @override
  void die() {
    

    if(lastDirectionHorizontal == Direction.left ){
      gameRef.add(AnimatedObjectOnce(position: position, animation: BardSprite.dieLeft, size: size));
    }else{
      gameRef.add(AnimatedObjectOnce(position: position, animation: BardSprite.dieRight, size: size));
    }
    removeFromParent();
    super.die();
  }
  
}