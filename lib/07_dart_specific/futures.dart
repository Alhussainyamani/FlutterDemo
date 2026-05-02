// ICS 410 - Dart Tutorial - Futures

Future<String> slowJob(String label, int ms) async {
  await Future<void>.delayed(Duration(milliseconds: ms));
  return '$label (${ms}ms)';
}

Future<void> main() async {
  print('=== Futures ===');

  print('--- Constructing futures ---');
  final ready = Future.value(42);
  print('Future.value(42) -> ${await ready}');

  final delayed = Future<String>.delayed(
    const Duration(milliseconds: 300),
    () => 'done',
  );
  print('Future.delayed(300ms) -> ${await delayed}');

  print('--- Chaining with .then ---');
  final chained = await Future.value(10).then((v) => v * 2).then((v) => v + 1);
  print('10.then(*2).then(+1) = $chained');

  print('--- .catchError on a failing future ---');
  final recovered = await Future<int>.error('synthetic-failure')
      .catchError((Object e) {
        print('  caught in catchError: $e');
        return -1;
      });
  print('recovered value = $recovered');

  print('--- Sequential awaits (slow) ---');
  final stopwatch = Stopwatch()..start();
  final a = await slowJob('A', 300);
  final b = await slowJob('B', 300);
  final c = await slowJob('C', 300);
  stopwatch.stop();
  print('results: [$a, $b, $c]');
  print('sequential elapsed = ${stopwatch.elapsedMilliseconds} ms');

  print('--- Future.wait (parallel) ---');
  final sw2 = Stopwatch()..start();
  final results = await Future.wait([
    slowJob('A', 300),
    slowJob('B', 300),
    slowJob('C', 300),
  ]);
  sw2.stop();
  print('results: $results');
  print('parallel  elapsed = ${sw2.elapsedMilliseconds} ms');
  print('(parallel should be ~300ms, sequential ~900ms)');
}
