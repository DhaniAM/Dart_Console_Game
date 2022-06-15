import 'dart:io';
import 'character.dart';
import 'object.dart';

void main(List<String> arguments) {
  // Character c = Character();
  Player p1 = Player(100, 5, 10, 0, 0);
  Enemy e1 = Enemy(50, 2, 5, 10, 10);
  bool running = true;

  p1.checkStatus();
  e1.checkStatus();

  while(running) {
    switch(stdin.readLineSync()) {
      case 'up':
        p1.moveUp();
        print('(${p1.x}, ${p1.y})');
        break;
      case 'down':
        p1.moveDown();
        print('(${p1.x}, ${p1.y})');
        break;
      case 'left':
        p1.moveLeft();
        print('(${p1.x}, ${p1.y})');
        break;
      case 'right':
        p1.moveRight();
        print('(${p1.x}, ${p1.y})');
        break;
      case 'q':
        running = false;
        break;
    }
  }
}

