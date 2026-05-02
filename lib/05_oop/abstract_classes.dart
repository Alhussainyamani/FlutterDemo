// ICS 410 - Dart Tutorial - Abstract Classes

import 'dart:math' as math;

// `abstract` means: cannot be instantiated directly. Defines a contract.
abstract class Shape {
  double area();
  double perimeter();
}

class Circle extends Shape {
  final double r;
  Circle(this.r);

  @override
  double area() => math.pi * r * r;

  @override
  double perimeter() => 2 * math.pi * r;

  @override
  String toString() => 'Circle(r=$r)';
}

class Rectangle extends Shape {
  final double w;
  final double h;
  Rectangle(this.w, this.h);

  @override
  double area() => w * h;

  @override
  double perimeter() => 2 * (w + h);

  @override
  String toString() => 'Rectangle(w=$w, h=$h)';
}

void main() {
  print('=== Abstract Classes ===');

  // Uncommenting the next line is a compile-time error:
  //   final s = Shape();
  // Reason: Shape is abstract — area() and perimeter() have no
  // implementation, so Dart will not let you create one.

  print('--- Concrete subclasses ---');
  final List<Shape> shapes = [
    Circle(5),
    Rectangle(4, 6),
    Circle(1),
  ];

  for (final s in shapes) {
    print('$s -> area=${s.area().toStringAsFixed(2)}, '
        'perimeter=${s.perimeter().toStringAsFixed(2)}');
  }

  print('--- Total area across all shapes ---');
  var total = 0.0;
  for (final s in shapes) {
    total += s.area();
  }
  print('total area = ${total.toStringAsFixed(2)}');
}
