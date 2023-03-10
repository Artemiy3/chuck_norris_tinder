// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
mixin _$Joke {
  String get value => throw _privateConstructorUsedError;
  String get icon_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res, Joke>;
  @useResult
  $Res call({String value, String icon_url});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res, $Val extends Joke>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? icon_url = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      icon_url: null == icon_url
          ? _value.icon_url
          : icon_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$_JokeCopyWith(_$_Joke value, $Res Function(_$_Joke) then) =
      __$$_JokeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String icon_url});
}

/// @nodoc
class __$$_JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res, _$_Joke>
    implements _$$_JokeCopyWith<$Res> {
  __$$_JokeCopyWithImpl(_$_Joke _value, $Res Function(_$_Joke) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? icon_url = null,
  }) {
    return _then(_$_Joke(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      icon_url: null == icon_url
          ? _value.icon_url
          : icon_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Joke implements _Joke {
  const _$_Joke({required this.value, required this.icon_url});

  factory _$_Joke.fromJson(Map<String, dynamic> json) => _$$_JokeFromJson(json);

  @override
  final String value;
  @override
  final String icon_url;

  @override
  String toString() {
    return 'Joke(value: $value, icon_url: $icon_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Joke &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.icon_url, icon_url) ||
                other.icon_url == icon_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, icon_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeCopyWith<_$_Joke> get copyWith =>
      __$$_JokeCopyWithImpl<_$_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeToJson(
      this,
    );
  }
}

abstract class _Joke implements Joke {
  const factory _Joke(
      {required final String value, required final String icon_url}) = _$_Joke;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  String get value;
  @override
  String get icon_url;
  @override
  @JsonKey(ignore: true)
  _$$_JokeCopyWith<_$_Joke> get copyWith => throw _privateConstructorUsedError;
}
