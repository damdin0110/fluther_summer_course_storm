class Sprite {
  Sprite(String name) {
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isshow = true;
  int size = 100;
  int direction = 90;
  void pointInDeriction(int direction) {
    this.direction = direction;
  }

  void setSize(int size) {
    this.size = size;
  }

  int getDirection() {
    return direction;
  }

  void move(int x) {
    this.x = x;
  }

  String say() {
    return this.name;
  }

  void changeYby(int y) {
    this.y = y;
  }
}

void main() {
  final Luca = Sprite('Luca');
  final Hat = Sprite('Hat');
  final Kia = Sprite('Kia');
  print(Luca.say());
  print(Hat.say());
  print(Kia.say());
  print(Luca.getDirection());
  print(Hat.getDirection());
  print(Kia.getDirection());
  Luca.setSize(10);

}
