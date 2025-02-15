# Broad Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming and showcases how to improve error handling.

The `bug.dart` file shows code with a broad `catch` block that catches all exceptions, potentially hiding specific errors like JSON decoding failures. The `bugSolution.dart` file presents an improved version with more specific exception handling.