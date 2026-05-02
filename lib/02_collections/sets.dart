// ICS 410 - Dart Tutorial - Sets

void main() {
  print('=== Sets ===');

  print('--- Set literal ---');
  final Set<String> fruits = {'apple', 'banana', 'cherry'};
  print('fruits = $fruits  (length=${fruits.length})');

  print('--- Uniqueness ---');
  fruits.add('apple'); // duplicate, no-op
  print('after add("apple") again: $fruits  (still length=${fruits.length})');
  fruits.add('date');
  print('after add("date"): $fruits');

  print('--- Set.from(list with duplicates) ---');
  final listWithDups = ['a', 'b', 'a', 'c', 'b', 'a'];
  final unique = Set<String>.from(listWithDups);
  print('list: $listWithDups');
  print('Set.from(list) = $unique  (duplicates removed)');

  print('--- Set algebra ---');
  final Set<int> primes = {2, 3, 5, 7, 11};
  final Set<int> small = {1, 2, 3, 4, 5};
  print('primes = $primes');
  print('small  = $small');

  print('union:        ${primes.union(small)}');
  print('intersection: ${primes.intersection(small)}');
  print('difference (primes - small): ${primes.difference(small)}');
  print('difference (small - primes): ${small.difference(primes)}');

  print('--- contains / remove ---');
  print('primes.contains(7) = ${primes.contains(7)}');
  primes.remove(2);
  print('after primes.remove(2): $primes');

  print('--- Iteration ---');
  for (final p in primes) {
    print('  prime: $p');
  }
}
