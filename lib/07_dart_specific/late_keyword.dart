// ICS 410 - Dart Tutorial - The late Keyword

late String configValue;

String computeOnce() {
  print('  [computing... (only runs the first time it is read)]');
  return 'expensive-result';
}

void main() {
  print('=== late Keyword ===');

  print('--- late without initializer: must assign before reading ---');
  try {
    print('attempting to read configValue before assignment...');
    print('configValue = $configValue');
  } on Error catch (e) {
    // The runtime error class is not a public exported type in Dart 3,
    // so we catch its supertype `Error` and inspect at runtime.
    print('caught: ${e.runtimeType}');
    print('  message: $e');
  }

  print('--- After assignment, normal access works ---');
  configValue = 'loaded-from-disk';
  print('configValue = $configValue');

  print('--- late final with initializer: lazy, runs at most once ---');
  late final String expensive = computeOnce();
  print('declared "expensive", but computeOnce() has not run yet');
  print('first read: expensive = $expensive');
  print('second read: expensive = $expensive (no recompute)');

  print('--- late final without initializer: assign exactly once ---');
  late final int answer;
  answer = 42;
  print('answer = $answer');
  // answer = 7; // would throw at runtime: already assigned.
}
