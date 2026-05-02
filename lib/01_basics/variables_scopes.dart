// ICS 410 - Dart Tutorial - Variables and Scopes

void main() {
  print('=== Variables and Scopes ===');

  print('--- var (type inferred, reassignable) ---');
  var greeting = 'Hello';
  print('greeting = $greeting');
  greeting = 'Hi';
  print('greeting reassigned = $greeting');

  print('--- final (single-assignment, runtime value OK) ---');
  final now = DateTime.now();
  final randomSeed = now.millisecondsSinceEpoch % 100;
  print('now = $now');
  print('randomSeed (computed at runtime) = $randomSeed');
  // randomSeed = 5; // would fail: a final variable can be set only once.

  print('--- const (compile-time constant) ---');
  const pi = 3.14159;
  const greetingConst = 'Hello, world';
  print('pi = $pi');
  print('greetingConst = $greetingConst');
  // const badConst = DateTime.now(); // would fail: not a compile-time constant.

  print('--- dynamic (type-checked at runtime, can change) ---');
  dynamic anything = 42;
  print('anything = $anything (currently int)');
  anything = 'now a string';
  print('anything = $anything (now String)');
  anything = [1, 2, 3];
  print('anything = $anything (now List)');

  print('--- late (lazy initialization) ---');
  late final String expensive = _expensiveCompute();
  print('declared "expensive", but _expensiveCompute() not called yet');
  print('first read: expensive = $expensive');
  print('second read: expensive = $expensive (compute did NOT run again)');

  print('--- Block scope and shadowing ---');
  const x = 'outer';
  print('outer x = $x');
  {
    const x = 'inner';
    print('inner block x = $x (shadows outer)');
    {
      const x = 'innermost';
      print('innermost block x = $x');
    }
    print('back to inner block x = $x');
  }
  print('back to outer x = $x');
}

String _expensiveCompute() {
  print('  [_expensiveCompute() ran — only happens on first access]');
  return 'computed-value';
}
