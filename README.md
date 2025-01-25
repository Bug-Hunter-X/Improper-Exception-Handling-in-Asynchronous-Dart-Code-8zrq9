# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common issue in Dart:  inadequate exception handling within asynchronous functions.  The provided `bug.dart` file showcases a `fetchData` function that makes a network request. While it has a `try-catch` block, the error handling is generic and doesn't differentiate between various potential errors.

The solution, found in `bugSolution.dart`, improves the exception handling to provide more specific error messages and recovery mechanisms. This enhances the application's robustness and debuggability. 

## How to Run

1. Clone the repository.
2. Run the Dart code using your preferred method (e.g., `dart bug.dart` and `dart bugSolution.dart`).
3. Observe the output and compare the error handling approaches.