// ICS 410 - Dart Tutorial - Mixins and Implements

// (a) MIXIN — reusable behavior glued onto any class via `with`.
mixin Logger {
  void log(String msg) => print('[LOG] $msg');
}

class Service with Logger {
  void doWork() {
    log('working');
  }
}

// (b) IMPLEMENTS — pure interface contract. The class promises to provide
// every member of the interface; nothing is inherited from the body.
abstract interface class Ordered<T> {
  int compareTo(T other);
}

class Version implements Ordered<Version> {
  final int major;
  final int minor;
  final int patch;

  Version(this.major, this.minor, this.patch);

  @override
  int compareTo(Version other) {
    final m = major.compareTo(other.major);
    if (m != 0) return m;
    final n = minor.compareTo(other.minor);
    if (n != 0) return n;
    return patch.compareTo(other.patch);
  }

  @override
  String toString() => '$major.$minor.$patch';
}

void main() {
  print('=== Mixins and Implements ===');

  print('--- (a) mixin: `with Logger` ---');
  final svc = Service();
  svc.doWork();
  svc.log('also callable directly on the instance');

  print('--- (b) implements: Version implements Ordered<Version> ---');
  final v1 = Version(1, 2, 3);
  final v2 = Version(1, 5, 0);
  final v3 = Version(1, 2, 3);
  print('v1 = $v1, v2 = $v2, v3 = $v3');
  print('v1.compareTo(v2) = ${v1.compareTo(v2)}  (negative: v1 < v2)');
  print('v2.compareTo(v1) = ${v2.compareTo(v1)}  (positive: v2 > v1)');
  print('v1.compareTo(v3) = ${v1.compareTo(v3)}  (zero: equal)');

  print('--- Three relationship keywords, recap ---');
  print('extends    -> reuse + override   (single superclass)');
  print('implements -> contract only      (must reimplement everything)');
  print('with       -> mix in behavior    (any number of mixins)');
}
