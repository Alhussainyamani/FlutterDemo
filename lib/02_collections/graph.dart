// ICS 410 - Dart Tutorial - Graph and BFS

import 'dart:collection';

class Graph {
  final Map<String, List<String>> adj = {};

  void addEdge(String from, String to) {
    adj.putIfAbsent(from, () => <String>[]).add(to);
    adj.putIfAbsent(to, () => <String>[]).add(from);
  }

  List<String> bfs(String start) {
    final visited = <String>{};
    final order = <String>[];
    final queue = Queue<String>();

    queue.add(start);
    visited.add(start);

    while (queue.isNotEmpty) {
      final node = queue.removeFirst();
      order.add(node);
      final neighbors = adj[node] ?? const <String>[];
      for (final n in neighbors) {
        if (!visited.contains(n)) {
          visited.add(n);
          queue.add(n);
        }
      }
    }
    return order;
  }
}

void main() {
  print('=== Graph (BFS) ===');

  final g = Graph();
  g.addEdge('A', 'B');
  g.addEdge('A', 'C');
  g.addEdge('B', 'D');
  g.addEdge('C', 'D');
  g.addEdge('D', 'E');

  print('--- Adjacency list ---');
  for (final entry in g.adj.entries) {
    print('  ${entry.key} -> ${entry.value}');
  }

  print('--- BFS from A ---');
  final order = g.bfs('A');
  print('visit order: $order');

  print('--- BFS from E ---');
  print('visit order: ${g.bfs('E')}');
}
