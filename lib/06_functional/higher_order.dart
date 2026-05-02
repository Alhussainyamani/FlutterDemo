// ICS 410 - Dart Tutorial - Higher-Order Functions

// A typedef gives a name to a function signature so we can reuse it.
typedef IntOp = int Function(int);

int square(int n) => n * n;

// Returns a closure capturing `factor`.
int Function(int) makeMultiplier(int factor) => (x) => x * factor;

// Takes a function as a parameter — that is what makes `apply` higher-order.
void apply(int x, IntOp f) => print('f($x) = ${f(x)}');

void main() {
  print('=== Higher-Order Functions ===');

  print('--- Functions assigned to variables ---');
  final double10 = makeMultiplier(10);
  final triple = makeMultiplier(3);
  print('double10(7) = ${double10(7)}');
  print('triple(7)   = ${triple(7)}');

  print('--- Passing a named function ---');
  apply(5, square);

  print('--- Passing an anonymous function ---');
  apply(5, (n) => n + 1);

  print('--- Function composition via closures (typedef IntOp in use) ---');
  IntOp compose(IntOp f, IntOp g) => (x) => f(g(x));
  final squareThenTriple = compose(triple, square);
  print('squareThenTriple(4) = ${squareThenTriple(4)}  (4*4 = 16, *3 = 48)');
}
