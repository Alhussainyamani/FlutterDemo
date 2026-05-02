// ICS 410 - Dart Tutorial - Conditionals

void main() {
  print('=== Conditionals ===');

  print('--- if / else if / else (numeric grade classifier) ---');
  for (final score in const [97, 84, 73, 65, 42]) {
    final String letter;
    if (score >= 90) {
      letter = 'A';
    } else if (score >= 80) {
      letter = 'B';
    } else if (score >= 70) {
      letter = 'C';
    } else if (score >= 60) {
      letter = 'D';
    } else {
      letter = 'F';
    }
    print('score $score -> grade $letter');
  }

  print('--- Ternary ?: (parity check) ---');
  for (final n in const [1, 2, 3, 4]) {
    final parity = n % 2 == 0 ? 'even' : 'odd';
    print('$n is $parity');
  }

  print('--- Null-coalescing ?? (fallback for nullable) ---');
  // `String?` allows the value to be null; `??` substitutes a fallback.
  for (final String? username in const <String?>[null, 'alhussain']) {
    final displayName = username ?? 'guest';
    print('username = $username  ->  displayName = $displayName');
  }

  print('--- Null-aware ?. (safe member access) ---');
  // `?.` returns null instead of throwing when the receiver is null.
  for (final String? word in const <String?>[null, 'dart']) {
    print('word = $word  length = ${word?.length}  upper = ${word?.toUpperCase()}');
  }

  print('--- ?? combined with ?. (chain) ---');
  for (final String? input in const <String?>[null, 'hi']) {
    final lenOrZero = input?.length ?? 0;
    print('input = $input  ->  input?.length ?? 0 = $lenOrZero');
  }
}
