// ICS 410 - Dart Tutorial - Pass by Value of Reference

// Dart ALWAYS passes by value. For objects (List, Map, custom classes),
// the value being copied IS a reference to the same object on the heap.
// So mutating the object through the parameter is visible to the caller,
// but reassigning the parameter is NOT.

void mutate(int x) {
  // x is a local copy of the int value; reassigning it has no outside effect.
  x = 99;
  print('  inside mutate: x = $x');
}

void appendItem(List<int> xs) {
  // xs is a copy of the REFERENCE; both names point to the same list object.
  xs.add(99);
  print('  inside appendItem: xs = $xs');
}

void reassign(List<int> xs) {
  // Reassigning the local parameter only rebinds the local name; the caller's
  // variable still points to the original list.
  xs = [1, 2, 3];
  print('  inside reassign: xs = $xs (local rebind only)');
}

void main() {
  print('=== Pass by Value of Reference ===');

  print('--- int is a value type ---');
  const n = 5;
  print('before mutate: n = $n');
  mutate(n);
  print('after  mutate: n = $n  <-- unchanged');

  print('--- List: caller sees the mutation ---');
  final list1 = <int>[1, 2, 3];
  print('before appendItem: list1 = $list1');
  appendItem(list1);
  print('after  appendItem: list1 = $list1  <-- 99 was appended');

  print('--- List: reassignment INSIDE the function does not replace the caller list ---');
  final list2 = <int>[10, 20, 30];
  print('before reassign: list2 = $list2');
  reassign(list2);
  print('after  reassign: list2 = $list2  <-- still the original list');

  print('--- Identity check (same object on the heap) ---');
  print('identical(list1, list1) = ${identical(list1, list1)}');
  final aliased = list1; // both names refer to the same list
  aliased.add(0);
  print('after aliased.add(0): list1 = $list1, aliased = $aliased');
  print('identical(list1, aliased) = ${identical(list1, aliased)}');

  print('--- Dart vs other languages ---');
  print('Dart       : pass by value (object value = reference, so mutation is shared)');
  print('C++ "&" /  : true pass-by-reference — caller variable can be REPLACED');
  print('  C# "ref"   by the callee. Dart has no equivalent.');
  print('Java       : same as Dart (pass by value, references shared)');
}
