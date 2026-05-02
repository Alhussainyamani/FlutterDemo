// ICS 410 - Dart Tutorial - async / await

Future<String> fetchGreeting() async {
  await Future<void>.delayed(const Duration(milliseconds: 500));
  return 'Hello async!';
}

Future<int> failsSometimes() async {
  await Future<void>.delayed(const Duration(milliseconds: 100));
  throw Exception('boom');
}

String _now() => DateTime.now().toIso8601String();

Future<void> main() async {
  print('=== async / await ===');

  print('--- await a Future that resolves to a value ---');
  print('before fetchGreeting at ${_now()}');
  final msg = await fetchGreeting();
  print('after  fetchGreeting at ${_now()}');
  print('msg = $msg');

  print('--- async functions always return a Future ---');
  final f = fetchGreeting();
  print('fetchGreeting() return type runtime: ${f.runtimeType}');
  print('await f = ${await f}');

  print('--- Error handling with try/catch around await ---');
  try {
    final n = await failsSometimes();
    print('n = $n (will not print)');
  } on Exception catch (e) {
    print('caught from failsSometimes: $e');
  }

  print('--- async work runs sequentially with await ---');
  final t0 = DateTime.now();
  await fetchGreeting();
  await fetchGreeting();
  final t1 = DateTime.now();
  print('two sequential awaits took ${t1.difference(t0).inMilliseconds} ms');
}
