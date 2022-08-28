import 'package:escribo_bard_run/enemies/knight_enemy.dart';
import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:escribo_bard_run/player/bard_player.dart';
import 'package:escribo_bard_run/config/map.dart' as map;

class MyGame extends StatelessWidget {
  const MyGame({super.key});
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(
        ),
        
      ),
      map: WorldMapByTiled(
        'maps/taverna.json', 
        forceTileSize: Vector2(map.tileSize, map.tileSize),
        objectsBuilder: {
          'knight':(properties) => KnightEnemy(properties.position),
        }
      ),
      player: BardPlayer(Vector2(9.7*map.tileSize, 15.6*map.tileSize),
      ),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 2.5,
        sizeMovementWindow:Vector2(map.tileSize, map.tileSize),
        smoothCameraEnabled: true,
        smoothCameraSpeed: 1.5,
        
      ),
      showCollisionArea: true,
    );
  }

}