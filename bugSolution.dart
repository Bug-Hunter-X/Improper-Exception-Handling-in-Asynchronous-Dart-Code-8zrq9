```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Process the data
        print('Data fetched successfully: $data');
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('HTTP request failed with status: ${response.statusCode}.  Response body: ${response.body}');
    }
  } on http.ClientException catch (e) {
    print('Network error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```