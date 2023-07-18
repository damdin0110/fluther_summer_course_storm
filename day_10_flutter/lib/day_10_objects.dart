import 'package:flutter/foundation.dart';

class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void makeSound() {
    print("Hello I'm a sprite");
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;

  void printMyLocation() {
    print("My Location is ${this.x}and ${this.y}");
  }
}

class Rham {
  Rham({required String name}) {
    this.name = name;
  }
  String name = 'Rahm';
}

class Wheel {
  Wheel({required String name, required int numberOfWheels}) {
    this.name = name;
    this.numberOfWheels = numberOfWheels;
  }

  String name = 'Wheel';
  int numberOfWheels = 1;
}

class BiCycle {
  BiCycle({required String name, required Rham ram, required Wheel wheels}) {
    this.name = name;
    this.ram = ram;
    this.wheels = wheels;
  }
  String name = 'Bicylce';
  Rham ram = Rham(name: 'Canon Dale');
  Wheel wheels = Wheel(name: 'Montana', numberOfWheels: 4);
}

class Animal {
  String name = "Animal";
  String type = "Animal";
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
}
class Door{
  Door(int x, int y,);
    this.x=x;
    this.y=y;
}

}
class Esukhei{

}

void main() {
  final Sprite cat = Sprite(4, 5);
  print(cat);
  cat.makeSound();
  final NamedSprite dog = NamedSprite(x: 5, y: 6);
  print(dog);
  dog.printMyLocation();
  final Rham ram=Rham(name:'Montana');
  final Wheel wheel=Wheel(name: 'Wheel', numberOfWheels: 2);
  final BiCycle biCycle=BiCycle(name: 'dugui', ram: ram, wheels: wheel);
  print(biCycle);
}
