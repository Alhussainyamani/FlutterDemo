# Dart — A Complete Tour

> Comprehensive video tutorial on the **Dart programming language**, produced for **ICS 410 — Programming Languages** (Spring 2026).
> Covers the language end-to-end: installation, data abstraction, control abstraction, OOP, functional features, null safety, async/await, records & patterns, and a capstone mini-project.

**Audience:** both beginners *and* advanced programmers — early sections build from zero, later sections go deep on Dart 3 features.

**Watch the video:** *[YouTube link goes here once uploaded]*

> **Before submission / publication:** the items below are placeholders that must be replaced before recording or uploading.
> - Producer names (`[Team Member 1/2/3]`) — appears in this README and `docs/SLIDES.md` (S01, S35)
> - Repository URL (`<repo-link-placeholder>`, `<this-repo-url>`) — this README and `docs/SLIDES.md` (S01, S35)
> - YouTube URL (`[YouTube link goes here once uploaded]`) — this README only

---

## Producers

Produced by **[Team Member 1]**, **[Team Member 2]**, **[Team Member 3]** — ICS 410, Spring 2026.

---

## Quick Start

### Install Dart

**macOS:**
```bash
brew tap dart-lang/dart
brew install dart
dart --version   # verify
```

**Windows / Linux:** see [dart.dev/get-dart](https://dart.dev/get-dart).

**Zero-install option:** open [dartpad.dev](https://dartpad.dev) in any browser — copy any `.dart` file from this repo and run it there.

### Clone and run

```bash
git clone <this-repo-url>
cd ics410-dart-tutorial
dart pub get
dart run lib/01_basics/variables_scopes.dart
```

Each file under `lib/` is **standalone** with its own `void main()` — run any of them directly with `dart run <path>`.

### IDE recommendations

- **VS Code** + the [Dart extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) (most popular, lightweight)
- **IntelliJ IDEA / Android Studio** + Dart plugin
- **DartPad** ([dartpad.dev](https://dartpad.dev)) — browser, no install

---

## Repository Layout

```
ics410-dart-tutorial/
├── README.md                     ← you are here
├── pubspec.yaml                  ← Dart project manifest
├── analysis_options.yaml         ← lint config
├── lib/                          ← all live-demo Dart code
│   ├── 01_basics/
│   │   ├── variables_scopes.dart
│   │   ├── primitives_arithmetic.dart
│   │   └── type_conversion.dart
│   ├── 02_collections/
│   │   ├── lists.dart
│   │   ├── sets.dart
│   │   ├── maps.dart
│   │   ├── records_tuples.dart
│   │   ├── tree.dart
│   │   └── graph.dart
│   ├── 03_control_flow/
│   │   ├── conditionals.dart
│   │   ├── switch_patterns.dart
│   │   └── loops.dart
│   ├── 04_functions/
│   │   ├── parameters.dart
│   │   ├── arrow_lambdas.dart
│   │   ├── pass_by_value_refs.dart
│   │   └── closures.dart
│   ├── 05_oop/
│   │   ├── classes_constructors.dart
│   │   ├── encapsulation.dart
│   │   ├── inheritance_polymorphism.dart
│   │   ├── abstract_classes.dart
│   │   ├── mixins_implements.dart
│   │   └── factory_constructors.dart
│   ├── 06_functional/
│   │   ├── higher_order.dart
│   │   ├── map_where_reduce_fold.dart
│   │   └── lazy_iterables.dart
│   ├── 07_dart_specific/
│   │   ├── null_safety.dart
│   │   ├── late_keyword.dart
│   │   ├── extension_methods.dart
│   │   ├── async_await.dart
│   │   ├── futures.dart
│   │   └── streams.dart
│   └── 08_capstone/
│       └── mini_project.dart
└── docs/                         ← slide deck, diagrams, quiz, references
    ├── SLIDES.md                 ← 35-slide deck content + speaker notes
    ├── DIAGRAMS.md               ← 10 Mermaid / ASCII diagrams
    ├── QUIZ.md                   ← 7-question MCQ + answer key
    └── REFERENCES.md             ← curated further-reading list
```

---

## Rubric Coverage

This repo addresses every requirement in the ICS 410 grading rubric. The table below maps each rubric item to the file (and slide) that demonstrates it.

### Basic Contents

| Rubric item | File | Slide |
|---|---|---|
| Introduction & purpose | — | S3, S4 |
| Installation + IDEs | — | S5, S6 |
| Variables, assignments, scopes | `lib/01_basics/variables_scopes.dart` | S8 |
| Primitive types + arithmetic | `lib/01_basics/primitives_arithmetic.dart` | S9 |
| Type conversion | `lib/01_basics/type_conversion.dart` | S10 |
| Lists | `lib/02_collections/lists.dart` | S11 |
| Sets | `lib/02_collections/sets.dart` | S11 |
| Maps | `lib/02_collections/maps.dart` | S11 |
| Records (tuples) | `lib/02_collections/records_tuples.dart` | S11, S26 |
| Tree | `lib/02_collections/tree.dart` | S11 |
| Graph | `lib/02_collections/graph.dart` | S11 |
| Conditionals (if / else / switch) | `lib/03_control_flow/conditionals.dart`, `switch_patterns.dart` | S13 |
| Loops (for / while / do-while / recursion) | `lib/03_control_flow/loops.dart` | S14 |
| Functions (positional / named / optional / defaults) | `lib/04_functions/parameters.dart` | S15 |
| Arrow + first-class functions | `lib/04_functions/arrow_lambdas.dart` | S15 |
| Pass-by-value vs. by-reference | `lib/04_functions/pass_by_value_refs.dart` | S16 |
| Closures | `lib/04_functions/closures.dart` | S15 |

### Advanced Contents

| Rubric item | File | Slide |
|---|---|---|
| Supported paradigms | — | S17 |
| OOP — class / constructors | `lib/05_oop/classes_constructors.dart` | S18 |
| OOP — encapsulation | `lib/05_oop/encapsulation.dart` | S18 |
| OOP — inheritance | `lib/05_oop/inheritance_polymorphism.dart` | S19 |
| OOP — polymorphism + abstract | `lib/05_oop/abstract_classes.dart` | S20 |
| OOP — mixins & implements | `lib/05_oop/mixins_implements.dart` | S25 |
| OOP — factory constructors | `lib/05_oop/factory_constructors.dart` | S18 |
| Functional — higher-order | `lib/06_functional/higher_order.dart` | S21 |
| Functional — map/where/reduce/fold | `lib/06_functional/map_where_reduce_fold.dart` | S21 |
| Functional — lazy iteration (`sync*`) | `lib/06_functional/lazy_iterables.dart` | S22 |
| Null safety | `lib/07_dart_specific/null_safety.dart` | S23 |
| `late` keyword | `lib/07_dart_specific/late_keyword.dart` | S23 |
| Extension methods | `lib/07_dart_specific/extension_methods.dart` | S27 |
| Async / await | `lib/07_dart_specific/async_await.dart` | S24 |
| Futures | `lib/07_dart_specific/futures.dart` | S24 |
| Streams | `lib/07_dart_specific/streams.dart` | S24 |
| Capstone (combines records + OOP + async) | `lib/08_capstone/mini_project.dart` | — |
| MCQ Quiz (≥5 questions) | — | S28–S34, [`docs/QUIZ.md`](docs/QUIZ.md) |
| References | — | [`docs/REFERENCES.md`](docs/REFERENCES.md) |

---

## Filming / Viewing Order

If you're watching the video, sections appear in this order. If you're a producer recording, follow the same order so the narrative builds basic→advanced.

1. **Intro & install** (`S1–S6`) ~3:30
2. **Basics** (`01_basics/*`) ~4:30
3. **Control flow** (`03_control_flow/*`) ~4:00
4. **Collections** (`02_collections/lists.dart` → `sets.dart` → `maps.dart` → `records_tuples.dart`) — part of S11
5. **Functions** (`04_functions/*`) — part of S15 / S16
6. **Paradigms intro** (`S17`) ~1:30
7. **OOP** (`05_oop/*`) ~4:30
8. **Functional** (`06_functional/*`) ~3:30
9. **Tree & graph** (`02_collections/tree.dart`, `graph.dart`) — now that classes are covered
10. **Dart-specific** (`07_dart_specific/*`) ~5:00
11. **Capstone** (`08_capstone/mini_project.dart`)
12. **Quiz** (`S28–S34`) ~2:30
13. **References + closing** (`S34`–`S35`) ~1:00

**Total target:** ~30 minutes. YouTube chapters in the description map to these stops so beginner viewers can stop mid-way and advanced viewers can jump straight to null safety / async / records.

---

## How to Run All Examples

```bash
# Run any single file
dart run lib/01_basics/variables_scopes.dart

# Run every example end-to-end (smoke test)
for f in $(find lib -name "*.dart" | sort); do
  echo "=== $f ==="
  dart run "$f"
done

# Static analysis (must report "No issues found!")
dart analyze

# Format
dart format .
```

All 32 example files run cleanly with `dart analyze` reporting **no issues**.

---

## Documentation

- **[`docs/SLIDES.md`](docs/SLIDES.md)** — full 35-slide deck content with speaker notes (~30 min narration). Import into Keynote / PowerPoint / Google Slides.
- **[`docs/DIAGRAMS.md`](docs/DIAGRAMS.md)** — 10 visuals (Mermaid + ASCII): compilation pipeline, type hierarchy, scope flow, control flow, pass-semantics memory diagram, OOP UML, mixin composition, async timeline, null-safety state, records destructuring.
- **[`docs/QUIZ.md`](docs/QUIZ.md)** — 7-question MCQ quiz with answer key.
- **[`docs/REFERENCES.md`](docs/REFERENCES.md)** — curated further-reading list (official docs, courses, books, articles, communities, tools).

---

## License

- **Code** (`lib/**/*.dart`) — [MIT](https://opensource.org/licenses/MIT)
- **Slides, diagrams, written content** (`docs/**`) — [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

You may use, modify, and redistribute these materials for any purpose with attribution.

---

## Acknowledgements

- The Dart team at Google for the language and the [dart.dev](https://dart.dev) docs.
- ICS 410 (Programming Languages) — course staff.
- All resources cited in [`docs/REFERENCES.md`](docs/REFERENCES.md).

---

*Code along, experiment, break things. The best way to learn a language is to write code in it.*
# FlutterDemo
