// ICS 410 - Dart Tutorial - Switch and Patterns

void main() {
  print('=== Switch and Patterns ===');

  print('--- Classic switch / case / break ---');
  for (final day in const [1, 3, 6, 8]) {
    String label;
    switch (day) {
      case 1:
        label = 'Monday';
        break;
      case 2:
        label = 'Tuesday';
        break;
      case 3:
        label = 'Wednesday';
        break;
      default:
        label = 'unknown ($day)';
        break;
    }
    print('day $day -> $label');
  }

  print('--- Dart 3 switch EXPRESSION ---');
  for (final n in const [1, 2, 3, 7]) {
    final word = switch (n) {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      _ => 'other',
    };
    print('$n => $word');
  }

  print('--- Pattern match on a record (int, int) ---');
  const points = <(int, int)>[
    (0, 0),
    (5, 0),
    (0, 7),
    (3, 4),
  ];
  for (final p in points) {
    final desc = switch (p) {
      (0, 0) => 'origin',
      (final x, 0) => 'on x-axis: $x',
      (0, final y) => 'on y-axis: $y',
      (final x, final y) => 'point ($x, $y)',
    };
    print('$p -> $desc');
  }

  print('--- Guard clause with `when` ---');
  for (final n in const [3, 50, 250, 1000]) {
    final size = switch (n) {
      0 => 'zero',
      final v when v > 100 => 'big ($v)',
      final v when v > 10 => 'medium ($v)',
      final v => 'small ($v)',
    };
    print('$n -> $size');
  }
}
