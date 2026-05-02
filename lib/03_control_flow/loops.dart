// ICS 410 - Dart Tutorial - Loops

int factorial(int n) => n <= 1 ? 1 : n * factorial(n - 1);

void main() {
  print('=== Loops ===');

  print('--- C-style for ---');
  for (var i = 0; i < 5; i++) {
    print('i = $i');
  }

  print('--- for-in over a list ---');
  const fruits = ['apple', 'banana', 'cherry'];
  for (final f in fruits) {
    print('fruit: $f');
  }

  print('--- while ---');
  var n = 3;
  while (n > 0) {
    print('while n = $n');
    n--;
  }

  print('--- do-while (always runs at least once) ---');
  var m = 0;
  do {
    print('do-while m = $m');
    m++;
  } while (m < 3);

  print('--- break (stop early) ---');
  for (var i = 0; i < 10; i++) {
    if (i == 4) break;
    print('break-loop i = $i');
  }

  print('--- continue (skip current iteration) ---');
  for (var i = 0; i < 6; i++) {
    if (i.isOdd) continue;
    print('even i = $i');
  }

  print('--- Recursion: factorial ---');
  for (final k in const [0, 1, 5, 7]) {
    print('factorial($k) = ${factorial(k)}');
  }
}
