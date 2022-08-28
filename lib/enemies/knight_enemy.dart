import 'package:bonfire/bonfire.dart';
import 'package:bonfire/util/mixins/direction_animation.dart';
import 'package:escribo_bard_run/enemies/knight_sprite.dart';
import 'package:escribo_bard_run/config/map.dart' as map;
import 'package:escribo_bard_run/config/attributes.dart' as attributes;


class KnightEnemy extends SimpleEnemy with ObjectCollision, DirectionAnimation {
  bool fainted = false;

  static double knightHitBox = map.tileSize*0.75;
  KnightEnemy(Vector2 position) : super(
    position: position,
    size: Vector2(map.entitySize, map.entitySize),
    animation: SimpleDirectionAnimation(
      idleRight: KnightSprite.idleRight, 
      runRight: KnightSprite.runRight,
      idleLeft: KnightSprite.idleLeft, 
      runLeft: KnightSprite.runLeft
    ),
    speed: attributes.enemiesSpeed,
    life: attributes.enemiesMaxHP
  ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(knightHitBox, knightHitBox),
        align: Vector2(
          (map.entitySize - knightHitBox)/2, 
          (map.entitySize - knightHitBox)/2 + 2
        ),
      ),
    ]));
  }
  @override
  void update(double dt) {
    if(!fainted){
      seeAndMoveToPlayer(
        closePlayer: (player){},
        radiusVision: map.tileSize*3,
      );
    }
    super.update(dt);
  }
  
  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    fainted = true;
    if(lastDirectionHorizontal == Direction.left ){
      animation?.playOnce(KnightSprite.faintLeft);
    }else{
      animation?.playOnce(KnightSprite.faintRight);
    }
    super.receiveDamage(attacker, damage, identify);
  }

  void _executeAttack(){
    simpleAttackMelee(
          damage: 16, 
          size: Vector2(
            map.tileSize, 
            map.tileSize
          ),
        );

    gameRef.add(AnimatedObjectOnce(position: position, animation: KnightSprite.attackLeft, size: size));
      
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is Player){
        _executeAttack();
    }
    return super.onCollision(component, active);
  }

  @override
  void die() {
    
    removeFromParent();
    super.die();
  }
  
}