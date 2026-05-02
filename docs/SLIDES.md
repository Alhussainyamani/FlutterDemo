# Dart: A Complete Tour — Slide Deck

> ICS 410 Programming Languages, Spring 2026
> Total slides: 35
> Target runtime: ~30 minutes at ~140 wpm
> Total speaker-note word budget: ~4,200 words

---

## S01 — Title Slide

**Bullets:**
- Dart: A Complete Tour
- ICS 410 — Programming Languages
- Spring 2026
- Produced by [Team Member 1], [Team Member 2], [Team Member 3]
- Slides licensed CC BY 4.0 — Code MIT
- Companion repo: `<repo-link-placeholder>`

**Speaker notes:**

Welcome to our ICS 410 tutorial on the Dart programming language. We are really glad you are here.

Over the next thirty minutes we will give you a complete tour of Dart — what it is, where it came from, why it matters today, and how its most important language features actually work in practice.

We have written this so it is useful whether you have never touched a single line of Dart in your life, or you are already a working developer who just wants a fast modern refresher.

Every code example you will see has a runnable companion file in the GitHub repository linked in the description. We strongly encourage you to clone it and code along.

So grab a coffee, open a terminal, and let us get started.

---

## S02 — Agenda

**Bullets:**
- 00:00 Intro & background (S1–S6)
- 03:30 Data abstraction — variables, types, conversions (S7–S11)
- 09:00 Control abstraction — conditionals, loops, functions (S12–S16)
- 14:00 Paradigms — OOP and functional Dart (S17–S22)
- 21:00 Modern features — null safety, async, mixins, records, extensions (S23–S27)
- 26:00 Quiz — seven questions, easy to hard (S28–S34)
- 29:30 References & wrap-up (S35)

**Speaker notes:**

Here is our roadmap for the next half hour. The video is divided into six clear sections, with timestamps on screen so you can jump around.

We begin with background and setup — what Dart is, why people use it, and how to install the SDK. That takes about three and a half minutes.

Then we cover data abstraction: how Dart lets you describe values with variables, primitives, conversions, and collections.

Next is control abstraction — conditionals, loops, functions, and how arguments are passed.

After that we explore Dart's three programming paradigms in depth: imperative, object-oriented, and functional.

Then we tackle the modern Dart 3 features that really set the language apart in 2026.

We close with a seven-question quiz from easy to hard, plus references for further study. Let us dive in.

---

## S03 — What is Dart

**Bullets:**
- Created by Google, first released in 2011
- Designed by Lars Bak and Kasper Lund (V8 alumni)
- Modern, statically typed, multi-paradigm
- Open source under a BSD license (permissive open-source license)
- Two compile modes: AOT (native binaries) and JIT (hot reload)
- Best known as the language behind Flutter

**Speaker notes:**

So what is Dart? Dart is a language created at Google, first released in 2011.

It was originally designed by Lars Bak and Kasper Lund — two engineers famous for their work on the V8 JavaScript engine in Chrome.

"Statically typed" means every variable has a known type at compile time, catching mistakes before runtime.

"Multi-paradigm" means you mix object-oriented, functional, and imperative styles freely in the same file.

Dart is open source under a BSD license — a permissive open-source license that lets anyone use, modify, and redistribute the code — governed in the open on GitHub.

A key feature is dual compilation. AOT, ahead-of-time, produces fast native machine code you ship to users. JIT, just-in-time, compiles while you run — enabling hot reload that shows code changes in milliseconds.

Most developers meet Dart through Flutter, Google's framework for building mobile, web, desktop, and embedded apps from one codebase.

---

## S04 — Why Dart

**Bullets:**
- Mobile: Flutter on iOS and Android with one codebase
- Web: compiles to JavaScript or WebAssembly
- Server: REST and gRPC (Google's fast RPC protocol) backends with Shelf, Dart Frog, Serverpod
- CLI: scripts and tools that compile to a single native binary
- Strengths: sound null safety, hot reload, strong tooling
- Audience: students, mobile devs, full-stack engineers, scripters

**Speaker notes:**

So why pick Dart? It is a genuine "write once, run almost anywhere" language.

For mobile, you build iOS and Android apps with Flutter from one shared codebase — saving enormous time over writing native apps separately.

For the web, you compile Dart to JavaScript, or to WebAssembly for closer-to-native browser performance.

For backend work, frameworks like Shelf, Dart Frog, and Serverpod power REST or gRPC — a fast Google-developed RPC protocol — APIs on the same Dart VM.

For scripting, you compile command-line tools to a single native binary with no runtime to install.

Dart's strengths are sound null safety, instant hot reload, excellent tooling, and a syntax familiar to anyone who has used Java, JavaScript, TypeScript, C-sharp, or Swift.

Who is Dart for? Almost anyone. Approachable for first-timers, deep enough for seasoned engineers.

---

## S05 — Installation

**Bullets:**
- macOS: `brew tap dart-lang/dart && brew install dart`
- Windows: `choco install dart-sdk` or download MSI installer
- Linux: `sudo apt install dart` after adding the Google APT repo
- Verify: `dart --version`
- Or install Flutter SDK — it bundles Dart automatically
- Pin per project with FVM (Flutter Version Manager) — optional, advanced

**Speaker notes:**

Installing Dart is straightforward across all three major OSes.

On macOS, use Homebrew. Tap the dart-lang formula and install dart.

On Windows, use Chocolatey with `choco install dart-sdk`, or grab the MSI installer from dart dot dev.

On Linux, add Google's APT repo and run `sudo apt install dart`. Similar packages exist for Fedora and Arch.

After installing, run `dart --version` to confirm the SDK is on your PATH.

One shortcut: if you install the Flutter SDK, Dart comes bundled. So just install Flutter if you plan to do Flutter work.

For multiple projects with different Flutter SDK versions, FVM — the Flutter Version Manager — can pin a Dart version per project. This is optional, and only matters if you juggle multiple Flutter projects.

---

## S06 — IDEs & Tooling

**Bullets:**
- VS Code with the official Dart extension
- IntelliJ IDEA or Android Studio with Dart and Flutter plugins
- DartPad — zero-install browser playground at `dartpad.dev`
- Built-in: `dart format`, `dart analyze`, `dart test`, `dart run`
- Package manager: `dart pub`, registry at `pub.dev`

**Speaker notes:**

For your editor, you have great options.

VS Code with the official Dart extension is the most popular — fast, lightweight, with syntax highlighting, completion, diagnostics, and a debugger.

JetBrains users can pick IntelliJ IDEA or Android Studio with the Dart and Flutter plugins. Heavier but more feature-rich.

For zero-install, head to DartPad dot dev — a free official browser playground that runs Dart client-side.

The SDK ships with `dart format`, `dart analyze`, `dart test`, and `dart run` built in. No separate utilities needed.

The package manager is `dart pub`, and the public registry lives at pub dot dev. You will find packages for HTTP clients, JSON, databases, GUI widgets — anything you need.

---

## S07 — Data Abstraction Overview

**Bullets:**
- "Data abstraction" — how a language lets you name and shape values
- We will cover:
  - Variables and scope rules
  - Primitive types and arithmetic
  - Type conversion between values
  - Advanced collection types and generics
- Goal: model data confidently in Dart by the end of this section

**Speaker notes:**

Now we are getting into the core of the tutorial. The next chunk is all about data abstraction.

"Data abstraction" sounds intimidating, but it is really just a fancy phrase. It means how a language lets you name values, group them together, and give them meaning.

Over the next five slides we cover four big topics: variables and where they are visible, the built-in primitive types and arithmetic, how to convert between types, and finally Dart's collections and generics.

"Generics" — just to define the term up front — is a way to reuse the same code across many different element types. So one List class can store integers, strings, or anything else.

By the end of this section you should be confident modeling basic data in Dart programs. Let us begin.

---

## S08 — Variables & Scope

**Bullets:**
- `var x = 10;` — type inferred, can be reassigned
- `final name = 'Ada';` — set once at runtime
- `const PI = 3.14;` — compile-time constant
- `late String token;` — promise to assign before use
- `dynamic anything;` — opt out of static typing (use sparingly)
- Scope is **lexical** — visible inside the curly-brace block

```dart
const pi = 3.14159;            // compile-time constant
final today = DateTime.now();  // computed once at runtime
var counter = 0;               // can be reassigned
```

**Speaker notes:**

Dart gives you five ways to declare a variable, each telling the compiler something different.

`var` infers the type from the initial value, and can be reassigned later. Your everyday workhorse.

`final` is assigned exactly once and frozen for life. But the value can be computed at runtime — great for a timestamp or a request ID.

`const` is stronger. The value must be known at compile time and gets baked into the binary. Two const-equal values share memory.

`late` says "I promise to assign before I read." Handy for fields initialized in a constructor body or computed lazily on first read.

`dynamic` opts out of static typing — powerful but risky. Use it sparingly, mostly when interfacing with untyped data like raw JSON.

Scope is lexical. A name is visible only inside the curly-brace block where declared, plus nested blocks, and goes out of scope when the block ends.

---

## S09 — Primitive Types & Arithmetic

**Bullets:**
- `int` — whole numbers (64-bit on native)
- `double` — IEEE-754 floats (64-bit)
- `num` — supertype of `int` and `double`
- `bool` — strictly `true` or `false`, no truthiness
- `String` — UTF-16, single or double quotes, `${expr}` interpolation
- Operators: `+ - * / % ~/` — note `~/` is integer division

```dart
final pi = 3.14;          // double
final answer = 7 ~/ 2;    // 3 — integer division
final greeting = 'Hi $pi';
```

**Speaker notes:**

Dart's primitive types are clean.

`int` is whole numbers — sixty-four-bit signed integers on native platforms.

`double` is sixty-four-bit IEEE-754 floating-point values.

`num` is a parent type holding either an int or a double, useful when accepting either.

`bool` is strictly true or false. Unlike JavaScript, an empty string, zero, or null is not "falsy" — an `if` condition must be an actual bool.

`String` stores UTF-16 text. Single or double quotes work, and dollar-sign interpolation embeds expressions inside a string.

Arithmetic operators are familiar from C-style languages. But watch the tilde-slash — that is integer division, truncating toward zero and returning an int.

Regular slash always returns a double, even when dividing two integers. So seven divided by two is three point five, not three.

---

## S10 — Type Conversion

**Bullets:**
- String to number: `int.parse('42')`, `double.parse('3.14')`
- Safe parse: `int.tryParse('foo')` returns `null` instead of throwing
- Number to String: `42.toString()` or `'$n'`
- Cast: `obj as Animal` — runtime check, throws on mismatch
- Test: `obj is Animal` (and `obj is! Animal`)
- Type promotion inside `is` checks

```dart
final n = int.parse('42');
if (animal is Dog) animal.bark(); // type-promoted!
```

**Speaker notes:**

Dart does not auto-convert between types. You convert explicitly, preventing subtle bugs.

To go from string to number, call `int.parse` or `double.parse`. If input might be malformed, prefer `tryParse`, which returns null instead of throwing.

For number to string, call `toString` or use string interpolation.

To force one type into another at runtime, use `as`. If the cast mismatches, you get an exception, so usually guard with an `is` check first.

`is` returns true when an object is compatible with a type. `is!` is its negation.

After an `is` check, the compiler "type-promotes" the variable, so you can use it directly without an extra cast.

---

## S11 — Advanced Types

**Bullets:**
- `List<int>` — ordered, indexable, growable by default
- `Set<String>` — unordered, no duplicates
- `Map<String, int>` — key-value pairs
- Generics: `class Box<T> { T value; }` — one class, many element types
- Records (Dart 3): `(int, String) row = (1, 'Ada');` — lightweight tuples

```dart
final scores = <String, int>{'Ada': 95, 'Bob': 88};
final point = (3, 4);     // a record
```

**Speaker notes:**

Beyond primitives, Dart ships rich built-in collections.

`List` is an ordered sequence, growable by default — like an array in C or Java.

`Set` is an unordered collection that rejects duplicates — perfect when you care only about membership.

`Map` stores key-value pairs, like a Python dictionary.

All three are generic. You parameterize them with the element type using angle brackets — `List<int>`, `Map<String, int>`.

You can write your own generic classes too, with `<T>` after the class name.

New in Dart 3 are records — anonymous fixed-size tuples you can return without defining a class. We revisit records on slide twenty-six.

---

## S12 — Control Abstraction Overview

**Bullets:**
- "Control abstraction" — how a language directs execution flow
- Coming up:
  - Conditionals — `if`, ternary, `??`, `switch`, patterns
  - Loops — `for`, `while`, `do-while`, recursion
  - Functions — first-class with named/optional parameters
  - Pass semantics — what really happens when you pass an argument

**Speaker notes:**

Now we shift gears from data to control.

"Control abstraction" is just the term for how a language lets you steer the flow of execution — when to branch, when to loop, when to call into another piece of code.

Over the next five slides we will look at branching with conditionals, repeating with loops, defining and calling functions, and finally what actually happens when you pass a value as an argument.

That last point — pass semantics — is something many languages get subtly different. Confusion about it is the source of countless bugs in real production code, so we will be very precise about it.

Together with data abstraction, control abstraction gives you the building blocks for every program you will ever write.

---

## S13 — Conditionals

**Bullets:**
- Classic `if / else if / else`
- Ternary: `cond ? a : b`
- Null-coalescing: `name ?? 'guest'` — fallback if left is null
- Switch statement and **switch expression** (Dart 3): returns a value
- Pattern matching: destructure inside `switch` and `if-case`

```dart
final tier = switch (score) {
  >= 90 => 'A',
  >= 80 => 'B',
  _     => 'F',
};
```

**Speaker notes:**

Branching in Dart looks familiar to anyone who has used a C-style language.

You have classic `if`, `else if`, `else` chains for multi-way branching. And you have the ternary operator with question-mark and colon for picking between two values inline.

The double question mark — formally called the null-coalescing operator — gives you a quick fallback when the left side is null. We will see this again when we cover null safety.

Dart 3 added two big improvements here. First, switch expressions, which actually return a value rather than just executing statements.

Second, pattern matching, which lets you destructure objects, records, and lists right inside the case label.

Notice how clean that grade-tier example is. No break statements anywhere, no fallthrough bugs to worry about. The underscore is the wildcard catch-all pattern. That style of code reads more like math than control flow, and it is one of the nicest parts of modern Dart.

---

## S14 — Loops

**Bullets:**
- Classic: `for (var i = 0; i < 10; i++) { ... }`
- For-in over any `Iterable`: `for (final item in list)`
- `while` and `do-while`
- Recursion — function calls itself, watch the base case
- `break`, `continue`, and labeled breaks

```dart
int fact(int n) => n <= 1 ? 1 : n * fact(n - 1);
```

**Speaker notes:**

Looping in Dart covers all the usual cases you would expect.

The classic three-part `for` loop with an explicit index is there when you genuinely need a counter.

The `for-in` form iterates over any iterable — lists, sets, even custom lazy iterables we will build in a few slides. This is the form you should reach for first because it is more readable.

`while` and `do-while` behave exactly the way you expect from any C-style language. `while` checks the condition first; `do-while` checks after the first iteration.

And of course you can recurse — define a function that calls itself. But always include a base case so you do not blow up the call stack with infinite recursion.

The factorial example here is a one-liner thanks to the arrow function syntax we will cover in just two slides.

Both `break` and `continue` work normally inside loops. Dart also supports labeled breaks for jumping out of nested loops in one shot.

---

## S15 — Functions

**Bullets:**
- Positional: `int add(int a, int b) => a + b;`
- Optional positional: `void greet(String n, [String? title])`
- Named with defaults: `void make({required int x, int y = 0})`
- Arrow shorthand for one-expression bodies: `=> expr`
- First-class — pass them, store them, return them
- Closures capture surrounding variables

```dart
final nums = [1, 2, 3].map((n) => n * 2).toList();
```

**Speaker notes:**

Functions in Dart are wonderfully flexible.

By default, parameters are positional and required.

Square brackets make parameters optional and positional, with defaults you specify.

Curly braces make them named. Named parameters self-document call sites because you write each name at the call.

Mark named parameters `required` for compiler enforcement, or give them defaults.

The fat-arrow is shorthand for a single-expression body — same as `return expr`, but tighter.

Functions are first-class values: pass them, store them, return them.

They form proper closures, capturing variables from the surrounding scope.

---

## S16 — Pass Semantics

**Bullets:**
- Dart passes arguments by **value of the reference**
- Primitives (`int`, `bool`): the value is copied — caller is unaffected
- Objects: the reference is copied — both names point to the same object
- Mutations through that reference are visible to the caller
- Reassigning the parameter does **not** affect the caller

```dart
void grow(List<int> xs) => xs.add(99); // visible outside
void rebind(List<int> xs) => xs = [];  // not visible outside
```

**Speaker notes:**

This is the slide that trips many people up. Listen closely.

Dart is "pass-by-value-of-the-reference," sometimes called call-by-sharing.

For primitive numbers and booleans, the value itself is copied into the parameter. Changes inside the function are local — they never leak out.

For objects — lists, maps, sets, your own classes — what gets copied is the reference handle to the underlying object.

Both caller and function now hold separate handles pointing at the same single object in memory.

Mutating through the handle — say, calling `add` on a list — is visible to the caller because they share the object.

But reassigning the parameter to a different object only changes the local handle. The caller's variable is untouched.

Same model as Java, Python, and JavaScript — once you have it, it transfers.

---

## S17 — Paradigms

**Bullets:**
- Dart is **multi-paradigm: imperative + OOP + functional**
- OOP-first: every value is an object — even numbers and functions
- Strong functional support: lambdas, higher-order functions, immutable patterns
- Pick the style per problem and mix freely
- Real Dart code uses all three styles in one file

**Speaker notes:**

Dart is explicitly multi-paradigm — it supports imperative, object-oriented, and functional programming styles. And crucially, you can mix all three freely in the same file.

It leans OOP-first in the sense that every single value in Dart is an object. Yes, even integers, even booleans, and even functions themselves are objects with methods you can call.

But Dart also has very strong first-class functional features — lambdas, higher-order functions, immutable data patterns, and pure expression-based forms like switch expressions.

The big takeaway is that Dart does not force a single style on you. You pick the right tool for each individual problem and combine them as needed.

In real-world Dart code you will routinely see classes, functional pipelines, and old-school for-loops all coexisting in the same file. And that is healthy — pragmatic code wins.

---

## S18 — OOP: Class & Encapsulation

**Bullets:**
- `class Person { ... }` — fields, methods, constructors
- Privacy by convention: leading `_` makes a name **library-private**
- Getters and setters look like fields, run like methods
- Constructors: default, named, factory
- Initializer-list shorthand: `Person(this._name);`

```dart
class Person {
  final String _name;
  Person(this._name);
  String get name => _name;
}
```

**Speaker notes:**

OOP in Dart starts with the `class` keyword.

A class bundles together fields — which are the data — methods — which are the behavior — and constructors, which build new instances.

Privacy in Dart is handled by a single naming convention. A leading underscore on any name makes it library-private, meaning only code inside the same Dart source file can see it. There are no separate `public` or `private` keywords like in Java.

Getters and setters let you expose computed values that look exactly like plain fields from the outside. That is fantastic for encapsulation — you can change the internal implementation later without breaking callers.

Constructors come in three flavors. The default constructor matches the class name. Named constructors give a descriptive name to a particular way of building. And factory constructors can return a cached existing instance, or even an instance of a subclass.

The `this.underscore_name` shorthand in the constructor parameter list is a really nice touch. It automatically assigns the argument to the matching field — saving a line of boilerplate.

---

## S19 — OOP: Inheritance

**Bullets:**
- `class Dog extends Animal` — single inheritance only
- Override methods with `@override`
- Call the parent's version with `super.method()`
- Constructors chain via `: super(...)`
- All classes implicitly extend `Object`

```dart
class Dog extends Animal {
  @override
  String speak() => 'Woof! ${super.speak()}';
}
```

**Speaker notes:**

Inheritance lets one class build on another.

In Dart you write `extends` — and importantly, you can only extend one parent class at a time. That is called single inheritance.

To replace a parent's method, you redefine it in the child class and add the at-override annotation. The analyzer will warn you if the parent does not actually have that method, which catches typos and refactor bugs early.

From inside an override you can still call the parent's version with the `super` keyword, useful when you want to extend behavior rather than completely replace it. A common pattern is logging before calling super.

Constructors also chain to the parent automatically. If you do not specify, Dart calls the no-arg constructor of the parent. You can be explicit with the colon-super syntax in your constructor signature when you need to pass arguments.

And every class in Dart implicitly extends the `Object` class, which is the root of the type hierarchy.

---

## S20 — OOP: Polymorphism & Abstract Classes

**Bullets:**
- Polymorphism: same name, different behavior per subclass
- `abstract class Shape` — cannot be instantiated directly
- Methods without bodies must be implemented by subclasses
- Virtual dispatch — Dart picks the right method at runtime
- Dart 3: `interface class`, `final class` modifiers

```dart
abstract class Shape { double area(); }
class Circle extends Shape { @override double area() => 3.14 * r * r; }
```

**Speaker notes:**

Polymorphism — literally "many forms" — is the principle that the same method name does the right thing for whatever object you call it on, even when the calling code does not know the precise type.

In Dart you mark classes you do not want anyone to instantiate directly with the `abstract` keyword. Abstract classes act as templates or contracts for their subclasses.

Methods declared without a body inside an abstract class must be implemented by every concrete subclass — the analyzer enforces this rule, so you cannot accidentally forget one.

When you call a method on a variable typed as the parent class, Dart looks up the actual runtime class of the object and calls that subclass's version of the method. That runtime lookup is called virtual dispatch, and it is what makes polymorphism work.

Dart 3 also added `interface class` and `final class` modifiers, which let library authors precisely control whether their classes can be extended or implemented externally. A really nice tool for API design.

---

## S21 — Functional: Lambdas & HOF

**Bullets:**
- Lambda: anonymous function value, e.g. `(x) => x * 2`
- Higher-order function: takes or returns another function
- `map` — transform each element
- `where` — keep elements that pass a test
- `reduce` and `fold` — collapse a sequence to a single value
- Also: `forEach`, `any`, `every`, `expand`, `take`, `skip`

```dart
final sumOfSquares = [1,2,3,4]
    .map((n) => n * n)
    .reduce((a, b) => a + b); // 30
```

**Speaker notes:**

On the functional side of Dart, a lambda is just an unnamed function — a value you can pass around like any other piece of data.

A higher-order function is simply one that accepts another function as an argument or returns a function.

Dart's standard collection classes come with the classic higher-order toolbox built right in.

`map` transforms each element through a function you supply.

`where` filters — it keeps only the elements that pass a predicate test.

`reduce` and `fold` both collapse a sequence into a single accumulated value. The difference is that `fold` lets you supply your own starting seed value, while `reduce` uses the first element as the seed and throws on empty input.

There are many more — `forEach`, `any`, `every`, `expand`, `take`, `skip`, and so on — all defined on the `Iterable` type.

Chaining these together lets you express transformations declaratively, often replacing a whole imperative loop with one expressive readable line.

---

## S22 — Functional: Lazy Iteration

**Bullets:**
- `Iterable<T>` — a possibly-lazy sequence
- `sync*` body produces an `Iterable` lazily
- `yield` emits one value at a time
- `yield*` delegates to another iterable
- Computation happens only on demand

```dart
Iterable<int> evens(int n) sync* {
  for (var i = 0; i < n; i++) { if (i.isEven) yield i; }
}
```

**Speaker notes:**

Iterables in Dart can be lazy, meaning they generate their values only as you actually consume them, not all upfront.

Mark a function body with the `sync*` keyword and use the `yield` keyword inside, and Dart turns the function into a lazy iterable generator.

Each call to `next` on the resulting iterable runs the function body just far enough to produce one more value, then pauses execution.

This is incredibly useful for infinite or computationally expensive sequences. Absolutely nothing happens until something actually iterates the result, and you can stop early without wasting work.

You can also chain `map` and `where` on these iterables, and the laziness propagates through the whole pipeline. Only what you ask for is computed.

The `yield*` variant — yield-star — lets one generator delegate to another iterable, which is great for composing generators.

For the live demo, see `lib/06_functional/lazy_iterables.dart` — it shows the `naturals()` infinite generator capped by `.take(10)` and chained lazy `where`/`map`/`take` operations.

---

## S23 — Null Safety

**Bullets:**
- Sound null safety since Dart 2.12 — the type system tracks null
- `String name` — never null
- `String? maybeName` — nullable, may be null
- `?.` — call only if non-null: `user?.name`
- `??` — default if null: `name ?? 'anon'`
- `!` — assert non-null at runtime (use carefully)
- `??=` — assign only if currently null

**Speaker notes:**

Sound null safety is one of Dart's signature features and was a major addition back in Dart 2.12.

By default, every type in modern Dart is non-nullable. A `String` variable cannot be null, full stop, and the compiler statically enforces it before your code ever runs.

To opt in to nullability you add a question mark to the type. So `String?` is a String that may also be null.

The question-mark-dot operator is a safe member access. It returns null instead of crashing if the receiver is null.

The double question mark gives you a fallback value when the left side is null.

And the bang or exclamation mark forces the compiler to treat a nullable value as non-null. It will throw a runtime error if you are wrong, so only use it when you are absolutely certain.

There is also `??=` — assign only if currently null. Useful for lazy initialization.

Together these tools statically eliminate an entire class of bugs that plague languages without null safety. And they add zero runtime overhead.

---

## S24 — Async/Await

**Bullets:**
- `Future<T>` — a placeholder for a value arriving later
- `async` — function returns a `Future` and may use `await`
- `await` — pauses the function until the `Future` completes
- Single-threaded event loop — interleaves awaiting tasks
- `Stream<T>` for many async values over time
- True parallelism via `Isolate`

```dart
Future<String> fetchUser() async {
  final res = await http.get(url);
  return res.body;
}
```

**Speaker notes:**

Asynchronous code in Dart is built around the `Future` type.

A `Future` is a placeholder — a promise — for a value that will exist later. Like the response from a network request or a slow database query.

Mark a function with the `async` keyword and it implicitly returns a `Future` and can use the `await` keyword inside its body.

`await` suspends the surrounding async function until the awaited `Future` completes, then resumes execution with the resolved value bound to the result of the await expression.

Dart programs run on a single-threaded event loop. So two pieces of Dart code never execute at exactly the same time on the same isolate.

But the event loop interleaves many awaiting tasks for very high concurrency. While one task awaits, another can run.

When you have many values arriving over time rather than just one — say, a sequence of user clicks or websocket messages — you use a `Stream` instead of a single `Future`.

And if you really need true parallelism for CPU-bound work, Dart provides `Isolate`s — independent memory-isolated worker contexts.

---

## S25 — Mixins

**Bullets:**
- A `mixin` is a bundle of methods you drop into a class
- Apply with `with`: `class Bird extends Animal with Flyer, Singer`
- Reuse code from many sources without classic multiple inheritance
- `on Type` clause restricts where a mixin can be applied
- Dart 3 `mixin class`: extend or mix in

```dart
mixin Flyer { void fly() => print('flying'); }
class Bird with Flyer { }
```

**Speaker notes:**

Mixins solve a real practical problem. You frequently want to share behavior across classes that do not share a single parent.

Classic multiple inheritance from C-plus-plus handles this, but creates its own headaches — like the diamond problem where two parents define the same method.

In Dart you define a mixin — a bundle of methods and fields — and you apply it to any class with the `with` keyword.

You can apply several mixins at once on the same class. Order matters — methods are resolved last-mixin-wins, with the rightmost mixin taking priority.

You can also restrict a mixin to only classes that extend a specific type using the `on` clause. That is great for safety, because it lets the mixin call methods it knows the host class will provide.

Dart 3 added "mixin classes" which can be both extended like a regular class and mixed in like a mixin, providing extra flexibility for library authors.

---

## S26 — Records & Patterns (Dart 3)

**Bullets:**
- Record = anonymous, fixed-size group of values: `(int, String)`
- Positional and named fields: `(1, name: 'Ada')`
- Destructure with patterns: `var (x, y) = point;`
- Pattern matching in `switch` for clean branching
- Built-in equality and hash — equal-fields means equal records

```dart
(int, int) divmod(int a, int b) => (a ~/ b, a % b);
final (q, r) = divmod(17, 5); // q = 3, r = 2
```

**Speaker notes:**

Records and patterns are two of the headline features of Dart 3, and they pair beautifully together.

A record is like a tuple — a small fixed-size group of values that you can return from a function without first defining a class for it.

Records can have positional fields, named fields, or both at the same time. And you can destructure them using patterns, pulling values directly into named local variables in one clean line.

Patterns also work inside switch expressions, which lets you replace many small wrapper classes with concise inline matches.

Records have value semantics. Two records with the same shape and equal fields are equal under double-equals and produce the same hash code. Fantastic for use as map keys.

See `lib/02_collections/records_tuples.dart` in the companion repository for the live demo we walk through in the video.

---

## S27 — Extension Methods

**Bullets:**
- Add new methods to **existing** types — even types you do not own
- Works on `String`, `int`, `List`, framework types, anything
- Defined with the `extension` keyword
- Statically resolved — no runtime overhead, no monkey-patching
- Can also add getters, setters, and operators

```dart
extension Shout on String {
  String shout() => '${toUpperCase()}!';
}
'hello'.shout(); // HELLO!
```

**Speaker notes:**

Extension methods let you add brand-new methods to types you did not write yourself — including the built-in standard library types like `String`, `int`, and `List`.

You declare an `extension` block with the `extension` keyword and a target type. Inside the block you add methods that look and feel exactly like real members of that type.

The Dart compiler resolves the call statically based on the static type at the call site. So there is no runtime overhead at all, and no risk of accidentally breaking other parts of the codebase that did not import your extension.

This pattern is fantastic for keeping code readable. Instead of writing `formatMoney(balance)` with the value as an argument, you write `balance.formatMoney()`. The method chain reads naturally left to right.

Extensions can also add getters, setters, and even operators — not just plain methods. So you have full flexibility.

---

## S28 — Quiz Q1 (Easy)

**Bullets:**
- **Q1.** Dart is primarily developed by which company?
- A. Microsoft
- B. Google
- C. JetBrains
- D. Mozilla
- Difficulty: Easy

**Speaker notes:**

Time for a quiz — seven questions, easiest to hardest.

Question one. Dart is primarily developed by which company? A Microsoft, B Google, C JetBrains, D Mozilla?

*(Pause ~3 seconds.)*

The correct answer is B — Google. Dart was created at Google in 2011 and remains a Google-led open-source project.

---

## S29 — Quiz Q2 (Easy)

**Bullets:**
- **Q2.** Which keyword declares a compile-time constant in Dart?
- A. `var`
- B. `final`
- C. `const`
- D. `late`
- Difficulty: Easy

**Speaker notes:**

Question two. Which keyword declares a compile-time constant — a value baked into the binary at compile time? A var, B final, C const, D late?

*(Pause ~3 seconds.)*

The correct answer is C — const. `var` allows reassignment, `final` freezes after first runtime assignment, `late` delays initialization. Only `const` is required to be known at compile time.

---

## S30 — Quiz Q3 (Medium)

**Bullets:**
- **Q3.** In Dart, function arguments are passed by…
- A. Pure value
- B. Pure reference
- C. Value of the reference
- D. Name
- Difficulty: Medium

**Speaker notes:**

Question three. In Dart, function arguments are passed by… A pure value, B pure reference, C value of the reference, D name?

*(Pause ~3 seconds.)*

The correct answer is C — value of the reference. The handle is copied; mutations to the object are visible to the caller, but reassigning the parameter is not. Same model as Java and Python.

---

## S31 — Quiz Q4 (Medium)

**Bullets:**
- **Q4.** Which mechanism lets a Dart class reuse code from multiple sources without traditional multiple inheritance?
- A. `extends`
- B. `implements`
- C. `with` (mixins)
- D. `as`
- Difficulty: Medium

**Speaker notes:**

Question four. Which mechanism lets a Dart class reuse code from multiple sources without traditional multiple inheritance? A extends, B implements, C `with` (mixins), D `as`?

*(Pause ~3 seconds.)*

The correct answer is C — `with`, using mixins. Extends only inherits from one parent. Implements forces redefining every method. `as` is for casting. Mixins stack reusable behavior.

---

## S32 — Quiz Q5 (Hard)

**Bullets:**
- **Q5.** What does a `sync*` function return?
- A. `Future`
- B. `Iterable` lazily produced via `yield`
- C. `Stream`
- D. `void`
- Difficulty: Hard

**Speaker notes:**

Question five — hard mode. What does a `sync*` function return? A Future, B Iterable lazily produced via yield, C Stream, D void?

*(Pause ~3 seconds.)*

The correct answer is B — an Iterable lazily produced via yield. `sync*` is for synchronous lazy generators; `async*` returns a Stream instead.

---

## S33 — Quiz Q6 (Hard)

**Bullets:**
- **Q6.** What does `await` do to a `Future<T>`?
- A. Cancels it
- B. Converts it to T synchronously
- C. Suspends the async function until completion, then yields T
- D. Wraps T in another Future
- Difficulty: Hard

**Speaker notes:**

Question six. What does `await` do to a `Future<T>`? A cancels it, B converts to T synchronously, C suspends the async function until completion then yields T, D wraps T in another Future?

*(Pause ~3 seconds.)*

The correct answer is C — `await` suspends the surrounding async function until the future completes, then resumes with the resolved T value. The function is suspended, not blocking — other event-loop tasks keep running.

---

## S34 — Quiz Q7 (Medium)

**Bullets:**
- **Q7.** Extension methods allow you to…
- A. Modify Dart's standard library source
- B. Add methods to existing types without subclassing
- C. Override private fields
- D. Replace mixins
- Difficulty: Medium

**Speaker notes:**

Last quiz question. Extension methods allow you to… A modify Dart's standard library source, B add methods to existing types without subclassing, C override private fields, D replace mixins?

*(Pause ~3 seconds.)*

The correct answer is B — add methods to existing types without subclassing. The compiler resolves the call statically; no original source is modified.

---

## S35 — References & Closing

**Bullets:**
- Thanks for watching!
- Code along: `<repo-link-placeholder>`
- Full reference list: `docs/REFERENCES.md`
- Slides: CC BY 4.0 — Code: MIT License
- Produced by [Team Member 1], [Team Member 2], [Team Member 3] — ICS 410, Spring 2026
- Like, subscribe, and leave a question in the comments

**Speaker notes:**

That is a wrap — thank you for watching.

Clone the companion repo and code along with every example. The link is in the description.

Detailed references and further reading are in `docs/REFERENCES.md`.

Slides are CC BY 4.0; code is MIT — fork and remix freely.

Produced by Team Member 1, Team Member 2, and Team Member 3 for ICS 410, Spring 2026.

If this helped, please like, subscribe, and drop your questions in the comments. See you next time.
