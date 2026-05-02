// ICS 410 - Dart Tutorial - Type Conversion

void main() {
  print('=== Type Conversion ===');

  print('--- String -> number ---');
  final parsedInt = int.parse('42');
  final parsedDouble = double.parse('3.14');
  print('int.parse("42") = $parsedInt  (${parsedInt.runtimeType})');
  print('double.parse("3.14") = $parsedDouble  (${parsedDouble.runtimeType})');

  print('--- number -> String ---');
  const n = 99;
  const pi = 3.14159;
  print('(99).toString() = "${n.toString()}"');
  print('(3.14159).toString() = "${pi.toString()}"');

  print('--- int <-> double ---');
  const fromDouble = 9.7;
  print('(9.7).toInt() = ${fromDouble.toInt()}   <- truncates toward zero');
  print('(9.7).round() = ${fromDouble.round()}  <- nearest integer');
  print('(9.7).floor() = ${fromDouble.floor()}');
  print('(9.7).ceil()  = ${fromDouble.ceil()}');

  const fromInt = 5;
  final asDouble = fromInt.toDouble();
  print('(5).toDouble() = $asDouble  (${asDouble.runtimeType})');

  print('--- "as" cast (explicit type assertion) ---');
  const Object obj = 'I am a String';
  const s = obj as String;
  print('obj as String -> "$s" (length=${s.length})');

  print('--- "is" / "is!" type checks ---');
  const Object thing = 123;
  print('thing is int  = ${thing is int}');
  print('thing is String = ${thing is String}');
  print('thing is! double = ${thing is! double}');

  if (thing is int) {
    // Inside this block Dart promotes "thing" to int automatically.
    print('promoted: thing + 1 = ${thing + 1}');
  }

  print('--- Catching a parse failure ---');
  try {
    final bad = int.parse('not a number');
    print('parsed: $bad'); // not reached
  } on FormatException catch (e) {
    print('caught FormatException: ${e.message}');
  }

  print('--- Catching a bad "as" cast ---');
  try {
    const Object o = 42;
    final wrong = o as String; // runtime type error
    print('wrong = $wrong'); // not reached
  } on TypeError catch (e) {
    print('caught TypeError: $e');
  }
}
