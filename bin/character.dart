class Character {
  int _health, _attack, _armor, _x, _y;
  Character({
    int health = 1, 
    int attack = 0, 
    int armor = 0, 
    int x = 0, 
    int y = 0}) 
    : 
    _health = health, 
    _attack = attack,
     _armor = armor, 
     _x = x, 
     _y = y;
  
  // Getter
  int get health => _health;
  int get armor => _armor;
  int get attack => _attack;
  int get x => _x;
  int get y => _y;

  // Setter
  set health(hp) {
    health = hp;
  }
  set attack(ad) {
    health = ad;
  }
  set armor(ar) {
    health = ar;
  } 

  // Move Command
  void moveUp() => {
    if(_x != 100) {
      _x++;
  }};

  void moveDown() =>  {
    if(_x != 0) {
      _x--;
  }};
  void moveRight() => {
    if(_y != 100) {
      _y++;
  }};

  void moveLeft() => {
    if(_y != 0) {
      _y--;
  }};
  
  void checkStatus() {
    print('Position: ($_x.$_y), Health: $_health, Attack: $_attack, Armor: $_armor');
  }
}