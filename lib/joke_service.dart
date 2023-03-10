import 'dart:convert';
import 'package:http/http.dart' as http;
import 'joke.dart';

Future<Joke> fetchJoke() async {
  final response =
  await http.get(Uri.https('api.chucknorris.io', 'jokes/random'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return Joke.fromJson(json);
  } else {
    throw Exception('Failed to load joke');
  }
}
