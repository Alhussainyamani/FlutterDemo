// ICS 410 - Dart Tutorial - Streams

// Streams are async sequences; Futures are single-value async.

Future<void> main() async {
  print('=== Streams ===');

  print('--- Stream.periodic emits a value every 200ms ---');
  final ticks = Stream.periodic(
    const Duration(milliseconds: 200),
    (i) => i,
  ).take(5);

  await for (final n in ticks) {
    print('tick $n');
  }

  print('--- Transformations: .map and .where ---');
  final evenSquares = Stream.periodic(
    const Duration(milliseconds: 100),
    (i) => i,
  ).take(8).map((n) => n * n).where((n) => n.isEven);

  await for (final n in evenSquares) {
    print('even square: $n');
  }

  print('--- Stream.fromIterable (synchronous source) ---');
  final fromList = Stream.fromIterable([10, 20, 30, 40, 50]);
  await for (final v in fromList) {
    print('fromIterable -> $v');
  }

  print('--- Aggregating a stream with toList ---');
  final collected = await Stream.fromIterable([1, 2, 3, 4])
      .map((n) => n * 10)
      .toList();
  print('collected = $collected');
}
