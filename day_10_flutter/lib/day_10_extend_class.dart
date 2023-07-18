class Esukhei {
  Esukhei({required int age}) {
    this.age = age;
  }
  String name = 'Esukhei';
  int age = 0;
  void sayMyName() {
    print('My name is $this.name');
  }
}

class Temuujin extends Esukhei {
  Temuujin({required super.age});

  @override
  void sayMyName() {
    print('My name is Temuujin');
  }
}

class Khasar extends Esukhei {
  Khasar({required super.age});
  @override
  void sayMyName() {
    print('My name is Khasar');
  }
}

class Temuge extends Esukhei {
  Temuge({required super.age});
  @override
  void sayMyName() {
    print('My name is Temuge');
  }
}

class Khashuun extends Esukhei {
  Khashuun({required super.age});
  @override
  void sayMyName() {
    print('My name is Khashuun');
  }
}

void main() {
  final Esukhei esukheiBaatar = Esukhei(age: 25);
  esukheiBaatar.sayMyName();
  final Temuujin temuujin = Temuujin(age: 18);
  temuujin.sayMyName();
  final Temuge temuge = Temuge(age: 30);
  temuge.sayMyName();
  final Khashuun khashuun = Khashuun(age: 33);
  khashuun.sayMyName();
  final Khasar khasar = Khasar(age: 44);
  khasar.sayMyName();

}
