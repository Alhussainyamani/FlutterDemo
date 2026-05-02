// ICS 410 - Dart Tutorial - Factory Constructors

class Logger {
  // A factory can return an existing instance OR a subtype — unlike a
  // generative constructor, it is NOT required to make a fresh object.
  static final Map<String, Logger> _cache = {};

  final String name;

  Logger._internal(this.name);

  factory Logger(String name) =>
      _cache.putIfAbsent(name, () => Logger._internal(name));

  static int get cachedCount => _cache.length;

  void log(String msg) => print('[$name] $msg');

  @override
  String toString() => 'Logger($name)';
}

void main() {
  print('=== Factory Constructors ===');

  print('--- First call: creates and caches ---');
  final a1 = Logger('auth');
  a1.log('first');

  print('--- Second call with same name: returns cached instance ---');
  final a2 = Logger('auth');
  a2.log('second');

  print('--- Different name: new instance ---');
  final db = Logger('db');
  db.log('hello db');

  print('--- Identity checks ---');
  print('identical(a1, a2)  = ${identical(a1, a2)}   (true: same instance)');
  print('a1 == a2           = ${a1 == a2}');
  print('identical(a1, db)  = ${identical(a1, db)}   (false: different name)');

  print('--- Cache size (via public getter) ---');
  print('Logger.cachedCount = ${Logger.cachedCount}');
}
