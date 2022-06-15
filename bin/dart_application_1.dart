import 'dart:io';
import 'character.dart';
import 'enemy.dart';
import 'player.dart';

void main(List<String> arguments) {
  // Character c = Character();
  Player p1 = Player(100, 5, 10, 0, 0);
  Enemy e1 = Enemy(50, 2, 5, 10, 10);

  p1.checkStatus();
  e1.checkStatus();
}

