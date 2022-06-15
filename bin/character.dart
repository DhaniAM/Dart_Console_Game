class Character {
  int health = 1, attack = 0, armor = 0, x = 0, y = 0;
  Character(
    this.health, this.attack, this.armor, this.x, this.y
  );

  // Move Command
  void moveUp() => {
    if(x != 100) {
      x++
  }};

  void moveDown() =>  {
    if(x != 0) {
      x--
  }};
  void moveRight() => {
    if(y != 100) {
      y++
  }};

  void moveLeft() => {
    if(y != 0) {
      y--
  }};
  
  void checkStatus() {
    print('Position: ($x.$y), Health: $health, Attack: $attack, Armor: $armor');
  }
}