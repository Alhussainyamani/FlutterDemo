// ICS 410 - Dart Tutorial - Primitives and Arithmetic

void main() {
  print('=== Primitive Types and Arithmetic ===');

  print('--- int, double, num ---');
  const int i = 7;
  const double d = 2.5;
  const num n = 10; // num is the supertype of int and double
  print('int i = $i  (runtimeType: ${i.runtimeType})');
  print('double d = $d  (runtimeType: ${d.runtimeType})');
  print('num n = $n  (runtimeType: ${n.runtimeType})');

  print('--- Arithmetic operators ---');
  const a = 17;
  const b = 5;
  print('a = $a, b = $b');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}   <- "/" always returns double');
  print('a ~/ b = ${a ~/ b}  <- "~/" is integer (truncating) division');
  print('a % b = ${a % b}   <- modulo (remainder)');

  print('--- Mixed int/double arithmetic ---');
  const x = 3;
  const y = 1.5;
  print('3 + 1.5 = ${x + y}  (result is double)');

  print('--- bool and logical operators ---');
  demoBoolOps(true, false);

  print('--- String and interpolation ---');
  const name = 'Ada';
  const age = 36;
  print('Hello, $name');
  print('Sum: ${a + b}');
  print('$name is ${age + 1} next year');

  print('--- String operations ---');
  const first = 'Hello';
  const second = 'Dart';
  print('concatenation: $first, $second');
  print('length: ${first.length}');
  print('upper: ${first.toUpperCase()}');
  print('contains "ar": ${second.contains("ar")}');
}

// Inputs come from parameters so the analyzer cannot prove the booleans
// are constants — keeps the demo lines free of dead-code warnings.
void demoBoolOps(bool isSunny, bool isWarm) {
  print('isSunny = $isSunny, isWarm = $isWarm');
  print('isSunny && isWarm = ${isSunny && isWarm}');
  print('isSunny || isWarm = ${isSunny || isWarm}');
  print('!isSunny = ${!isSunny}');
}
