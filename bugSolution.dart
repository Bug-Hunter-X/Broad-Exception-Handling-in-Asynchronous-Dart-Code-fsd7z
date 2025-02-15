```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
          //Process the data
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Error: Network error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```