import 'dart:io';
import 'character.dart';
import 'object.dart';



void main(List<String> arguments) {
  Player p1 = Player(100, 5, 10, 0, 0);
  Enemy e1 = Enemy(50, 2, 5, 10, 10);
  Enemy e2 = Enemy(50, 2, 5, 15, 10);
  Enemy e3 = Enemy(50, 2, 5, 10, 15);

  bool running = true;
  bool engaging = false;
  // enemy location
  List<int> encounterX = [10, 15, 10];
  List<int> encounterY = [10, 10, 15];
  List enemyList = [e1, e2, e3];
  Enemy? currentEnemy;

  // check is in current position theres enemy, npc, etc...
  void checkNearby(p1) {
    int len = encounterX.length;
    for (int idx = 0; idx < len; idx++) {
      // check is there enemy
      if(encounterX[idx] == p1.x && encounterY[idx] == p1.y) {
        print('engaging...');
        currentEnemy = enemyList[idx];
        running = false;
        engaging = true;
      }
    }
  }

  void attack(p1) {

  }

  void defend(p1) {

  }

  // game start, input on console. q to quit
  while(running) {
    switch(stdin.readLineSync()) {
      case 'up':
        p1.moveUp();
        checkNearby(p1);
        print('(${p1.x}, ${p1.y})');
        break;
      case 'down':
        p1.moveDown();
        checkNearby(p1);
        print('(${p1.x}, ${p1.y})');
        break;
      case 'left':
        p1.moveLeft();
        checkNearby(p1);
        print('(${p1.x}, ${p1.y})');
        break;
      case 'right':
        p1.moveRight();
        checkNearby(p1);
        print('(${p1.x}, ${p1.y})');
        break;
      case 'q':
        running = false;
        break;
    }
  }

  // attacking
  while(engaging) {
    switch(stdin.readLineSync()) {
      case 'attack':
        print('attacking...');
        attack(p1);
        break;
      case 'defend':
        print('defending...');
        defend(p1);
        break;
      case 'run':
        print('You escape...');
        running = true;
        engaging = false;
    }
  }
}

