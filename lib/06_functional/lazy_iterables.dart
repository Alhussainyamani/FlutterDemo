// ICS 410 - Dart Tutorial - Lazy Iterables

// `sync*` makes a synchronous generator. `yield` hands one value to the caller
// at a time; execution pauses here until the next value is requested.
Iterable<int> naturals() sync* {
  var i = 1;
  while (true) {
    yield i++;
  }
}

void main() {
  print('=== Lazy Iterables ===');

  print('--- naturals() is infinite, but .take(10) caps it ---');
  // Without .take or another terminator, iterating naturals() never ends.
  // The generator only produces values on demand, so this is safe.
  final first10 = naturals().take(10).toList();
  print('first 10 naturals = $first10');

  print('--- map() is lazy: nothing prints until we materialize ---');
  final mapped = [1, 2, 3, 4].map((n) {
    print('  [map fn called for $n]');
    return n * 10;
  });
  print('after .map(...) call — note: no [map fn called] lines yet');

  print('--- now call .toList() to force evaluation ---');
  final realized = mapped.toList();
  print('realized = $realized');

  print('--- materializing twice re-runs the map function ---');
  print('iterating again with .toList():');
  final realizedAgain = mapped.toList();
  print('realizedAgain = $realizedAgain  (map fn ran 4 more times)');

  print('--- Chained lazy ops over an infinite source ---');
  final firstFiveEvenSquares = naturals()
      .where((n) => n.isEven)
      .map((n) => n * n)
      .take(5)
      .toList();
  print('first 5 even squares = $firstFiveEvenSquares');
}
