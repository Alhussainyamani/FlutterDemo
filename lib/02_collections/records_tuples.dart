// ICS 410 - Dart Tutorial - Records (Dart 3 tuples)

// Records were added in Dart 3. They are lightweight, anonymous, immutable
// aggregates — useful for returning multiple values without defining a class.

void main() {
  print('=== Records ===');

  print('--- Positional record ---');
  const (int, String) pair = (42, 'answer');
  print('pair = $pair  (type: ${pair.runtimeType})');
  print('pair.\$1 = ${pair.$1}'); // first positional field
  print('pair.\$2 = ${pair.$2}'); // second positional field

  print('--- Named record ---');
  const ({int age, String name}) person = (age: 21, name: 'Sam');
  print('person = $person  (type: ${person.runtimeType})');
  print('person.name = ${person.name}');
  print('person.age  = ${person.age}');

  print('--- Mixed positional + named ---');
  const (int, {String label}) mix = (7, label: 'lucky');
  print('mix = $mix  (type: ${mix.runtimeType})');
  print('mix.\$1    = ${mix.$1}');
  print('mix.label = ${mix.label}');

  print('--- Destructuring with patterns ---');
  final (a, b) = pair;
  print('final (a, b) = pair  ->  a=$a, b=$b');

  final (:age, :name) = person;
  print('final (:age, :name) = person  ->  name=$name, age=$age');

  print('--- Returning multiple values ---');
  final xs = [4, 1, 9, -3, 7, 2, 8];
  final (min: lo, max: hi) = minMax(xs);
  print('xs = $xs');
  print('minMax(xs) -> min=$lo, max=$hi');

  print('--- Record equality (structural) ---');
  const p1 = (1, 'a');
  const p2 = (1, 'a');
  const p3 = (1, 'b');
  print('(1,"a") == (1,"a") -> ${p1 == p2}');
  print('(1,"a") == (1,"b") -> ${p1 == p3}');
}

({int min, int max}) minMax(List<int> xs) {
  if (xs.isEmpty) {
    throw ArgumentError('minMax: list must not be empty');
  }
  var lo = xs.first;
  var hi = xs.first;
  for (final v in xs) {
    if (v < lo) lo = v;
    if (v > hi) hi = v;
  }
  return (min: lo, max: hi);
}
