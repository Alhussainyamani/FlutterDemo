// ICS 410 - Dart Tutorial - Maps

void main() {
  print('=== Maps ===');

  print('--- Map literal ---');
  final Map<String, int> ages = {'Ada': 36, 'Linus': 54, 'Grace': 85};
  print('ages = $ages');

  print('--- Lookup ---');
  print('ages["Ada"] = ${ages['Ada']}');
  print('ages["Unknown"] = ${ages['Unknown']}  <- null when missing');

  print('--- Add / update by assignment ---');
  ages['Alan'] = 41;
  print('after ages["Alan"] = 41: $ages');
  ages['Ada'] = 37;
  print('after ages["Ada"] = 37: $ages');

  print('--- containsKey / containsValue ---');
  print('containsKey("Linus"): ${ages.containsKey('Linus')}');
  print('containsKey("Bob"):   ${ages.containsKey('Bob')}');
  print('containsValue(85):    ${ages.containsValue(85)}');
  print('containsValue(999):   ${ages.containsValue(999)}');

  print('--- update (existing key) ---');
  ages.update('Ada', (current) => current + 1);
  print('after update("Ada", +1): $ages');

  print('--- update with ifAbsent ---');
  ages.update('Margaret', (current) => current + 1, ifAbsent: () => 80);
  print('after update("Margaret", ifAbsent: 80): $ages');

  print('--- putIfAbsent ---');
  ages.putIfAbsent('Linus', () => 0); // already present, no change
  ages.putIfAbsent('Dennis', () => 70); // new key
  print('after putIfAbsent calls: $ages');

  print('--- Iterating entries ---');
  for (final entry in ages.entries) {
    print('  ${entry.key} -> ${entry.value}');
  }

  print('--- Just keys / values ---');
  print('keys:   ${ages.keys.toList()}');
  print('values: ${ages.values.toList()}');

  print('--- remove ---');
  ages.remove('Alan');
  print('after remove("Alan"): $ages');
}
