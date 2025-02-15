```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block will catch all exceptions, including FormatException 
    // if jsonDecode fails
    print('Error: $e');
    // Handle the error appropriately
  }
}
```