// ICS 410 - Dart Tutorial - Lists

void main() {
  print('=== Lists ===');

  print('--- Growable list literal ---');
  final List<int> nums = [1, 2, 3];
  print('initial: $nums  (length=${nums.length})');

  nums.add(4);
  print('after add(4): $nums');

  nums.addAll([5, 6, 7]);
  print('after addAll([5,6,7]): $nums');

  print('--- Indexing ---');
  print('nums[0] = ${nums[0]}');
  print('nums[3] = ${nums[3]}');
  nums[0] = 100;
  print('after nums[0] = 100: $nums');

  print('--- remove vs removeAt ---');
  nums.remove(100); // removes by value
  print('after remove(100): $nums');
  nums.removeAt(0); // removes at index
  print('after removeAt(0): $nums');

  print('--- sublist ---');
  final original = [10, 20, 30, 40, 50];
  final slice = original.sublist(1, 3); // indices 1..2 (end exclusive)
  print('original = $original');
  print('original.sublist(1, 3) = $slice');

  print('--- Spread operator ---');
  final a = [1, 2, 3];
  final b = [4, 5, 6];
  final combined = [...a, ...b, 7];
  print('a = $a');
  print('b = $b');
  print('[...a, ...b, 7] = $combined');

  print('--- Fixed-length list ---');
  final fixed = List<int>.filled(5, 0);
  print('List<int>.filled(5, 0) = $fixed');
  fixed[2] = 99;
  print('after fixed[2] = 99: $fixed');
  // fixed.add(1); // would throw at runtime: cannot add to a fixed-length list.

  print('--- Iteration with for-in ---');
  var sum = 0;
  for (final v in combined) {
    sum += v;
  }
  print('sum of $combined = $sum');

  print('--- Useful properties / methods ---');
  print('length: ${combined.length}');
  print('first: ${combined.first}');
  print('last: ${combined.last}');
  print('contains(5): ${combined.contains(5)}');
  print('indexOf(4): ${combined.indexOf(4)}');
  print('reversed: ${combined.reversed.toList()}');
}
