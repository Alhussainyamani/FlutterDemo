# Dart Tutorial Quiz

Welcome! This short quiz accompanies the ICS 410 Dart video tutorial. Try each question on your own before peeking at the answer key — actively recalling the answer beats passively re-reading the slides. The full answer key with brief explanations lives at the bottom of this file.

## Question 1 (Easy)
**Topic:** Intro/purpose

Dart is primarily developed by which company?

- A. Microsoft
- B. Google
- C. JetBrains
- D. Mozilla

## Question 2 (Easy)
**Topic:** Data Abstraction

Which keyword declares a compile-time constant in Dart?

- A. `var`
- B. `final`
- C. `const`
- D. `late`

## Question 3 (Medium)
**Topic:** Functions / Pass semantics

In Dart, function arguments are passed by…

- A. Pure value
- B. Pure reference
- C. Value of the reference
- D. Name

## Question 4 (Medium)
**Topic:** OOP

Which mechanism lets a Dart class reuse code from multiple sources without traditional multiple inheritance?

- A. `extends`
- B. `implements`
- C. `with` (mixins)
- D. `as`

## Question 5 (Hard)
**Topic:** Functional / Lazy iteration

What does a `sync*` function return?

- A. A `Future`
- B. An `Iterable` lazily produced via `yield`
- C. A `Stream`
- D. `void`

## Question 6 (Hard)
**Topic:** Async / Null safety

What does `await` do to a `Future<T>`?

- A. Cancels it
- B. Converts it to T synchronously
- C. Suspends the async function until completion, then yields T
- D. Wraps T in another `Future`

## Question 7 (Medium)
**Topic:** Language-specific

Extension methods allow you to…

- A. Modify Dart's standard library source
- B. Add methods to existing types without subclassing
- C. Override private fields
- D. Replace mixins

---

## Question 1 — Answer: B
Dart was created at Google and unveiled in 2011; it's the foundation for Flutter.

## Question 2 — Answer: C
`const` values are evaluated at compile time and are deeply immutable; `final` is single-assignment but evaluated at runtime.

## Question 3 — Answer: C
Dart copies the variable, but for objects, that variable's value IS a reference. So mutating the object inside a function is visible outside, but reassigning the parameter is not.

## Question 4 — Answer: C
Mixins are a form of code reuse via composition; you can apply multiple mixins with `with`, while a class can only `extends` one superclass.

## Question 5 — Answer: B
`sync*` returns a lazy `Iterable`; values are produced on demand using `yield`. Compare with `async*` which returns a `Stream`.

## Question 6 — Answer: C
`await` pauses the surrounding `async` function (returning control to the event loop), then resumes with the unwrapped `T` once the Future completes. The function still returns a Future to its own caller.

## Question 7 — Answer: B
Extensions add methods, getters, and operators to existing types — including types you don't own — without modifying their source or creating a subclass.

**Score yourself:** 7/7 hero, 5-6 strong, 3-4 review the basics, ≤2 rewatch the tutorial!
