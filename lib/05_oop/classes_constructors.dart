// ICS 410 - Dart Tutorial - Classes and Constructors

import 'dart:math' as math;

class Point {
  final double x;
  final double y;

  // Default generative constructor with formal `this.` parameters.
  Point(this.x, this.y);

  // Named constructor — use when you want multiple ways to build an instance.
  Point.origin()
      : x = 0,
        y = 0;

  // Named constructor with an initializer list reading from a list.
  Point.fromList(List<double> xs)
      : x = xs[0],
        y = xs[1];

  double distanceTo(Point other) {
    final dx = x - other.x;
    final dy = y - other.y;
    return math.sqrt(dx * dx + dy * dy);
  }

  // Override toString so print() shows something readable.
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  print('=== Classes and Constructors ===');

  print('--- Default constructor ---');
  final a = Point(3, 4);
  print('a = $a');

  print('--- Named constructor: Point.origin() ---');
  final origin = Point.origin();
  print('origin = $origin');

  print('--- Named constructor: Point.fromList([1.5, 2.5]) ---');
  final b = Point.fromList([1.5, 2.5]);
  print('b = $b');

  print('--- Method call: distanceTo ---');
  print('a.distanceTo(origin) = ${a.distanceTo(origin)}');
  print('a.distanceTo(b)      = ${a.distanceTo(b)}');

  print('--- toString override in interpolation ---');
  print('Three points: $a, $origin, $b');
}
