class Object {
  int x = 0, y = 0;
  Object(this.x, this.y);
}

class Tree extends Object{
  Tree(super.x, super.y);
}

class Rock extends Object{
  Rock(super.x, super.y);
}
class Bush extends Object{
  Bush(super.x, super.y);
}