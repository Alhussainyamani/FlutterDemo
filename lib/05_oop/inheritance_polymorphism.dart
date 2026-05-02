// ICS 410 - Dart Tutorial - Inheritance and Polymorphism

class Animal {
  final String name;
  Animal(this.name);

  String speak() => 'generic sound';
}

class Dog extends Animal {
  // `super.name` forwards directly to the superclass constructor (Dart 2.17+).
  Dog(super.name);

  @override
  String speak() => 'Woof!';
}

class Cat extends Animal {
  Cat(super.name);

  @override
  String speak() => 'Meow';
}

void main() {
  print('=== Inheritance and Polymorphism ===');

  print('--- A heterogeneous List<Animal> ---');
  final List<Animal> animals = [
    Dog('Rex'),
    Cat('Whiskers'),
    Animal('?'),
  ];

  print('--- Polymorphic dispatch via speak() ---');
  for (final a in animals) {
    // The runtime type decides which speak() runs — that is polymorphism.
    print('${a.name}: ${a.speak()}');
  }

  print('--- Runtime types ---');
  for (final a in animals) {
    print('${a.name} -> runtimeType = ${a.runtimeType}');
  }
}
