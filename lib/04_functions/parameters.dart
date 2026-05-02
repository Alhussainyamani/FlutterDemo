// ICS 410 - Dart Tutorial - Function Parameters

int add(int a, int b) => a + b;

String greet(String name, [String? title]) {
  if (title == null) return 'Hello, $name!';
  return 'Hello, $title $name!';
}

String describe({required String name, int age = 0, bool admin = false}) {
  final role = admin ? 'admin' : 'user';
  return '$name (age $age, $role)';
}

void main() {
  print('=== Function Parameters ===');

  print('--- Required positional ---');
  print('add(2, 3) = ${add(2, 3)}');
  print('add(10, -4) = ${add(10, -4)}');

  print('--- Optional positional [in brackets] ---');
  print('greet("Alhussain") = ${greet("Alhussain")}');
  print('greet("Alhussain", "Dr.") = ${greet("Alhussain", "Dr.")}');

  print('--- Named parameters {with defaults} ---');
  print('describe(name: "Sara") = ${describe(name: "Sara")}');
  print(
    'describe(name: "Omar", age: 21) = ${describe(name: "Omar", age: 21)}',
  );
  print(
    'describe(name: "Lina", admin: true) = '
    '${describe(name: "Lina", admin: true)}',
  );
  print(
    'describe(name: "Ali", age: 30, admin: true) = '
    '${describe(name: "Ali", age: 30, admin: true)}',
  );

  print('--- Named args can appear in any order ---');
  print(
    'describe(admin: true, name: "Yara", age: 25) = '
    '${describe(admin: true, name: "Yara", age: 25)}',
  );
}
