// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_city_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherByCityCondition _$WeatherByCityConditionFromJson(
    Map<String, dynamic> json) {
  return _WeatherByCityCondition.fromJson(json);
}

/// @nodoc
class _$WeatherByCityConditionTearOff {
  const _$WeatherByCityConditionTearOff();

// ignore: unused_element
  _WeatherByCityCondition call({int id, String main}) {
    return _WeatherByCityCondition(
      id: id,
      main: main,
    );
  }

// ignore: unused_element
  WeatherByCityCondition fromJson(Map<String, Object> json) {
    return WeatherByCityCondition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherByCityCondition = _$WeatherByCityConditionTearOff();

/// @nodoc
mixin _$WeatherByCityCondition {
  int get id;
  String get main;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherByCityConditionCopyWith<WeatherByCityCondition> get copyWith;
}

/// @nodoc
abstract class $WeatherByCityConditionCopyWith<$Res> {
  factory $WeatherByCityConditionCopyWith(WeatherByCityCondition value,
          $Res Function(WeatherByCityCondition) then) =
      _$WeatherByCityConditionCopyWithImpl<$Res>;
  $Res call({int id, String main});
}

/// @nodoc
class _$WeatherByCityConditionCopyWithImpl<$Res>
    implements $WeatherByCityConditionCopyWith<$Res> {
  _$WeatherByCityConditionCopyWithImpl(this._value, this._then);

  final WeatherByCityCondition _value;
  // ignore: unused_field
  final $Res Function(WeatherByCityCondition) _then;

  @override
  $Res call({
    Object id = freezed,
    Object main = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      main: main == freezed ? _value.main : main as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherByCityConditionCopyWith<$Res>
    implements $WeatherByCityConditionCopyWith<$Res> {
  factory _$WeatherByCityConditionCopyWith(_WeatherByCityCondition value,
          $Res Function(_WeatherByCityCondition) then) =
      __$WeatherByCityConditionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String main});
}

/// @nodoc
class __$WeatherByCityConditionCopyWithImpl<$Res>
    extends _$WeatherByCityConditionCopyWithImpl<$Res>
    implements _$WeatherByCityConditionCopyWith<$Res> {
  __$WeatherByCityConditionCopyWithImpl(_WeatherByCityCondition _value,
      $Res Function(_WeatherByCityCondition) _then)
      : super(_value, (v) => _then(v as _WeatherByCityCondition));

  @override
  _WeatherByCityCondition get _value => super._value as _WeatherByCityCondition;

  @override
  $Res call({
    Object id = freezed,
    Object main = freezed,
  }) {
    return _then(_WeatherByCityCondition(
      id: id == freezed ? _value.id : id as int,
      main: main == freezed ? _value.main : main as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherByCityCondition implements _WeatherByCityCondition {
  const _$_WeatherByCityCondition({this.id, this.main});

  factory _$_WeatherByCityCondition.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherByCityConditionFromJson(json);

  @override
  final int id;
  @override
  final String main;

  @override
  String toString() {
    return 'WeatherByCityCondition(id: $id, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherByCityCondition &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(main);

  @JsonKey(ignore: true)
  @override
  _$WeatherByCityConditionCopyWith<_WeatherByCityCondition> get copyWith =>
      __$WeatherByCityConditionCopyWithImpl<_WeatherByCityCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherByCityConditionToJson(this);
  }
}

abstract class _WeatherByCityCondition implements WeatherByCityCondition {
  const factory _WeatherByCityCondition({int id, String main}) =
      _$_WeatherByCityCondition;

  factory _WeatherByCityCondition.fromJson(Map<String, dynamic> json) =
      _$_WeatherByCityCondition.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  @JsonKey(ignore: true)
  _$WeatherByCityConditionCopyWith<_WeatherByCityCondition> get copyWith;
}
