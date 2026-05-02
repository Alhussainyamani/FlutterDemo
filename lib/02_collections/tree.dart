// ICS 410 - Dart Tutorial - Binary Search Tree

class BinaryTree {
  BinaryTree(this.value);

  int value;
  BinaryTree? left;
  BinaryTree? right;

  void insert(int v) {
    if (v < value) {
      final l = left;
      if (l == null) {
        left = BinaryTree(v);
      } else {
        l.insert(v);
      }
    } else if (v > value) {
      final r = right;
      if (r == null) {
        right = BinaryTree(v);
      } else {
        r.insert(v);
      }
    }
    // duplicates are ignored
  }

  // Recursion that builds and returns data, rather than printing as a side effect.
  List<int> inOrder() {
    final result = <int>[];
    _collectInOrder(result);
    return result;
  }

  void _collectInOrder(List<int> result) {
    left?._collectInOrder(result);
    result.add(value);
    right?._collectInOrder(result);
  }
}

void main() {
  print('=== Binary Search Tree ===');

  final tree = BinaryTree(5);
  const values = [3, 8, 1, 4, 7, 9];
  print('root = 5');
  print('inserting: $values');
  for (final v in values) {
    tree.insert(v);
  }

  print('--- in-order traversal (should be sorted) ---');
  print(tree.inOrder().join(' '));

  print('--- inserting a duplicate (no effect) ---');
  tree.insert(5);
  print(tree.inOrder().join(' '));
}
