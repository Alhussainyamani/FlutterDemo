// ICS 410 - Dart Tutorial - map / where / reduce / fold

void main() {
  print('=== map / where / reduce / fold ===');

  final nums = [1, 2, 3, 4, 5];
  print('nums = $nums');

  print('--- map: transform each element ---');
  final doubled = nums.map((n) => n * 2).toList();
  print('doubled = $doubled');

  print('--- where: keep elements that pass a predicate ---');
  final evens = nums.where((n) => n.isEven).toList();
  print('evens   = $evens');

  print('--- reduce: combine elements (no seed; needs nonempty) ---');
  final sum = nums.reduce((a, b) => a + b);
  print('sum     = $sum');

  print('--- fold: like reduce but with an initial value (and arbitrary type) ---');
  final sumPlus100 = nums.fold<int>(100, (acc, n) => acc + n);
  print('100 + sum(nums) = $sumPlus100');

  final concat = nums.fold<String>('start', (acc, n) => '$acc-$n');
  print('fold to String  = $concat');

  print('--- Chained pipeline: where -> map -> reduce ---');
  // Square the even numbers, then sum them.
  final squaredEvenSum =
      nums.where((n) => n.isEven).map((n) => n * n).reduce((a, b) => a + b);
  print('sum of squares of evens = $squaredEvenSum  (2*2 + 4*4 = 20)');
}
