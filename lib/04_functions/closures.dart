// ICS 410 - Dart Tutorial - Closures

// A closure captures the enclosing scope's variables. Each call to
// makeCounter() creates a NEW `count`, so independent counters don't share state.
int Function() makeCounter() {
  var count = 0;
  return () => ++count;
}

// Closure that captures parameters too.
int Function(int) makeAdder(int base) {
  return (int x) => base + x;
}

void main() {
  print('=== Closures ===');

  print('--- Two independent counters keep separate state ---');
  final counterA = makeCounter();
  final counterB = makeCounter();

  print('counterA() = ${counterA()}'); // 1
  print('counterA() = ${counterA()}'); // 2
  print('counterA() = ${counterA()}'); // 3

  print('counterB() = ${counterB()}'); // 1 (independent!)
  print('counterB() = ${counterB()}'); // 2

  print('counterA() = ${counterA()}'); // 4
  print('counterB() = ${counterB()}'); // 3

  print('--- Closure capturing a parameter ---');
  final addFive = makeAdder(5);
  final addTen = makeAdder(10);
  print('addFive(3) = ${addFive(3)}');
  print('addTen(3)  = ${addTen(3)}');
  print('addFive(20) = ${addFive(20)}');
}
