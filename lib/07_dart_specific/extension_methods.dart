// ICS 410 - Dart Tutorial - Extension Methods

// Extensions add methods/getters to existing types without
// modifying them or subclassing.
extension StringX on String {
  String get reversed => split('').reversed.join();

  bool get isPalindrome {
    final s = toLowerCase();
    return s == s.split('').reversed.join();
  }

  String repeat(int times) => List.filled(times, this).join();
}

extension IntX on int {
  bool get isPrime {
    if (this < 2) return false;
    for (var i = 2; i * i <= this; i++) {
      if (this % i == 0) return false;
    }
    return true;
  }
}

void main() {
  print('=== Extension Methods ===');

  print('--- String getters added by StringX ---');
  print("'hello'.reversed = ${'hello'.reversed}");
  print("'racecar'.isPalindrome = ${'racecar'.isPalindrome}");
  print("'hello'.isPalindrome = ${'hello'.isPalindrome}");
  print("'Madam'.isPalindrome = ${'Madam'.isPalindrome} (case-insensitive)");

  print('--- Extension method with parameters ---');
  print("'ab'.repeat(4) = ${'ab'.repeat(4)}");

  print('--- Extensions on int ---');
  for (final n in [1, 2, 3, 4, 7, 9, 11]) {
    print('$n.isPrime = ${n.isPrime}');
  }

  print('--- Chaining extension calls ---');
  print("'level'.reversed.isPalindrome = ${'level'.reversed.isPalindrome}");
}
