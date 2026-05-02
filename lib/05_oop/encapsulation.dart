// ICS 410 - Dart Tutorial - Encapsulation

// In Dart, identifiers prefixed with `_` are LIBRARY-PRIVATE. There is no
// `private` keyword like in Java. Within this single-file library, `_owner`
// and `_balance` are inaccessible from other files.
class BankAccount {
  final String _owner;
  double _balance;

  BankAccount(this._owner, this._balance);

  String get owner => _owner;

  double get balance => _balance;

  set balance(double v) {
    if (v < 0) {
      throw ArgumentError('negative balance not allowed: $v');
    }
    _balance = v;
  }

  void deposit(double amt) {
    if (amt <= 0) {
      throw ArgumentError('deposit must be positive: $amt');
    }
    _balance += amt;
  }

  void withdraw(double amt) {
    if (amt <= 0) {
      throw ArgumentError('withdraw must be positive: $amt');
    }
    if (amt > _balance) {
      throw StateError('insufficient funds: have $_balance, need $amt');
    }
    _balance -= amt;
  }

  @override
  String toString() => 'BankAccount(owner: $_owner, balance: $_balance)';
}

void main() {
  print('=== Encapsulation ===');

  print('--- Construct ---');
  final acct = BankAccount('Alhussain', 100.0);
  print('acct = $acct');

  print('--- Private field (library-private) ---');
  print('In Dart, _balance is library-private. From another file:');
  print('  final hidden = acct._balance;  // would be a compile error');

  print('--- Getter ---');
  print('acct.owner   = ${acct.owner}');
  print('acct.balance = ${acct.balance}');

  print('--- Setter (valid) ---');
  acct.balance = 250.0;
  print('after acct.balance = 250.0 -> $acct');

  print('--- deposit / withdraw ---');
  acct.deposit(50);
  print('after deposit(50)  -> $acct');
  acct.withdraw(80);
  print('after withdraw(80) -> $acct');

  print('--- Setter rejects invalid value ---');
  try {
    acct.balance = -1;
  } on ArgumentError catch (e) {
    print('caught: $e');
  }

  print('--- Withdraw that overdraws ---');
  try {
    acct.withdraw(9999);
  } on StateError catch (e) {
    print('caught: $e');
  }

  print('final state: $acct');
}
