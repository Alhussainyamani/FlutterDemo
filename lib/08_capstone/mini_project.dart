// ICS 410 - Dart Tutorial - Capstone: Course Gradebook

class Student {
  final String id;
  final String name;
  final List<int> grades;

  Student(this.id, this.name, this.grades);

  double get average =>
      grades.isEmpty ? 0 : grades.reduce((a, b) => a + b) / grades.length;

  @override
  String toString() =>
      '$name ($id): grades=$grades, avg=${average.toStringAsFixed(2)}';
}

class Gradebook {
  final Map<String, Student> _students = {};

  void enroll(Student s) {
    _students[s.id] = s;
  }

  Iterable<Student> get students => _students.values;

  // Returns a record (name, average) for the highest-averaged student,
  // or null if the gradebook is empty.
  (String, double)? topStudent() {
    if (_students.isEmpty) return null;
    final best = _students.values.reduce(
      (a, b) => a.average >= b.average ? a : b,
    );
    return (best.name, best.average);
  }

  Future<void> simulateBatchUpdate() async {
    print('  [batch update starting...]');
    for (final s in _students.values) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      s.grades.add(100);
      print('  + bonus 100 added for ${s.name}');
    }
    print('  [batch update complete]');
  }
}

Future<void> main() async {
  print('=== Capstone: Course Gradebook ===');

  final book = Gradebook()
    ..enroll(Student('s1', 'Alice', [88, 92, 79]))
    ..enroll(Student('s2', 'Bilal', [70, 75, 80]))
    ..enroll(Student('s3', 'Chen', [95, 98, 91]));

  print('--- Enrolled students and averages ---');
  for (final s in book.students) {
    print(s);
  }

  print('--- Top student (record return: (String, double)?) ---');
  final top = book.topStudent();
  if (top == null) {
    print('no students enrolled');
  } else {
    final (name, avg) = top;
    print('top = $name with avg ${avg.toStringAsFixed(2)}');
  }

  print('--- Async batch update (Future.delayed) ---');
  await book.simulateBatchUpdate();

  print('--- Updated averages after batch ---');
  for (final s in book.students) {
    print(s);
  }

  print('--- Top student after batch ---');
  final top2 = book.topStudent();
  print('top now = $top2');

  print('--- Empty gradebook returns null from topStudent() ---');
  final empty = Gradebook();
  print('empty.topStudent() = ${empty.topStudent()}');
}
