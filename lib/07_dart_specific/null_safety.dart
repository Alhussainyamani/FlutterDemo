// ICS 410 - Dart Tutorial - Null Safety

// Dart enforces non-null at compile time; you cannot accidentally
// pass null to a non-nullable parameter.

// Helpers that hide their result from the analyzer so we can demo
// runtime null behavior without "dead code" warnings.
String? maybeNull(bool returnNull) => returnNull ? null : 'value';
String? readNickname() => null;
String? readPresent() => 'hello';
String? readInput() => 'demo';

void main() {
  print('=== Null Safety ===');

  print('--- Non-nullable variable ---');
  const String name = 'Sam';
  print('name = $name (type: String, never null)');
  // String bad = null; // compile error: null can't be assigned to String.

  print('--- Nullable variable (defaults to null) ---');
  String? maybe = maybeNull(true);
  print('maybe = $maybe (type: String?)');

  print('--- Null-aware access (?.) ---');
  print('maybe?.length = ${maybe?.length} (no crash, just null)');
  maybe = maybeNull(false); // assign through helper to keep type as String?
  print('after maybe = "value", maybe?.length = ${maybe?.length}');

  print('--- Null-coalescing (??) ---');
  final String? nickname = readNickname();
  final display = nickname ?? 'unknown';
  print('nickname ?? "unknown" = $display');

  print('--- Assign-if-null (??=) ---');
  String? a = maybeNull(true); // null
  a ??= 'first-computed';
  print('a started null, after a ??= "first-computed" -> $a');

  String? b = maybeNull(false); // 'value'
  b ??= 'will-be-ignored';
  print('b started "value", after b ??= ... -> $b  (no-op, already non-null)');

  print('--- Bang (!) operator: assert non-null at runtime ---');
  final String? present = readPresent();
  print('present!.length = ${present!.length} (works, value is non-null)');

  final String? absent = maybeNull(true);
  try {
    print('attempting absent!.length on a null value...');
    final n = absent!.length;
    print('length = $n');
  } on TypeError catch (e) {
    print('caught TypeError as expected: $e');
  }

  print('--- Promotion: null check narrows the type ---');
  final String? input = readInput();
  if (input != null) {
    // Inside this block, "input" is promoted from String? to String.
    print('promoted length = ${input.length}');
  }
}
