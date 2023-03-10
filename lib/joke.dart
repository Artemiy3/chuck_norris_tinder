import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  const factory Joke({required String value, required String icon_url}) = _Joke;

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
