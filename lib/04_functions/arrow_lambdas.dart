// ICS 410 - Dart Tutorial - Arrow Functions and Lambdas

int square(int n) => n * n;

// Higher-order: takes a function as a parameter (first-class value).
int applyTwice(int x, int Function(int) f) => f(f(x));

void main() {
  print('=== Arrow Functions and Lambdas ===');

  print('--- Arrow function (=> single expression) ---');
  print('square(4) = ${square(4)}');
  print('square(9) = ${square(9)}');

  print('--- Anonymous function assigned to a variable ---');
  // Demonstrating that a function literal is a value you can store.
  // ignore: prefer_function_declarations_over_variables
  final int Function(int) cube = (int n) {
    return n * n * n;
  };
  print('cube(3) = ${cube(3)}');
  print('cube(5) = ${cube(5)}');

  print('--- Pass anonymous function to .map ---');
  final tens = [1, 2, 3].map((n) => n * 10).toList();
  print('[1, 2, 3].map((n) => n * 10) = $tens');

  print('--- Functions are first-class values ---');
  print('In Dart, functions are first-class values: assignable, returnable, passable.');
  print('applyTwice(3, square) = ${applyTwice(3, square)}'); // square(square(3)) = 81
  print('applyTwice(2, cube) = ${applyTwice(2, cube)}'); // cube(cube(2)) = 512

  print('--- Inline lambda passed directly ---');
  final doubled = [10, 20, 30].map((n) => n * 2).toList();
  print('[10, 20, 30].map((n) => n * 2) = $doubled');

  final evens = [1, 2, 3, 4, 5, 6].where((n) => n.isEven).toList();
  print('[1..6].where(isEven) = $evens');
}
