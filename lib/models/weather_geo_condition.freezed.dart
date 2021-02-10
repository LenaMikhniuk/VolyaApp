// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_geo_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherByGeoCondition _$WeatherByGeoConditionFromJson(
    Map<String, dynamic> json) {
  return _WeatherByGeoCondition.fromJson(json);
}

/// @nodoc
class _$WeatherByGeoConditionTearOff {
  const _$WeatherByGeoConditionTearOff();

// ignore: unused_element
  _WeatherByGeoCondition call({int id, String main}) {
    return _WeatherByGeoCondition(
      id: id,
      main: main,
    );
  }

// ignore: unused_element
  WeatherByGeoCondition fromJson(Map<String, Object> json) {
    return WeatherByGeoCondition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherByGeoCondition = _$WeatherByGeoConditionTearOff();

/// @nodoc
mixin _$WeatherByGeoCondition {
  int get id;
  String get main;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherByGeoConditionCopyWith<WeatherByGeoCondition> get copyWith;
}

/// @nodoc
abstract class $WeatherByGeoConditionCopyWith<$Res> {
  factory $WeatherByGeoConditionCopyWith(WeatherByGeoCondition value,
          $Res Function(WeatherByGeoCondition) then) =
      _$WeatherByGeoConditionCopyWithImpl<$Res>;
  $Res call({int id, String main});
}

/// @nodoc
class _$WeatherByGeoConditionCopyWithImpl<$Res>
    implements $WeatherByGeoConditionCopyWith<$Res> {
  _$WeatherByGeoConditionCopyWithImpl(this._value, this._then);

  final WeatherByGeoCondition _value;
  // ignore: unused_field
  final $Res Function(WeatherByGeoCondition) _then;

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
abstract class _$WeatherByGeoConditionCopyWith<$Res>
    implements $WeatherByGeoConditionCopyWith<$Res> {
  factory _$WeatherByGeoConditionCopyWith(_WeatherByGeoCondition value,
          $Res Function(_WeatherByGeoCondition) then) =
      __$WeatherByGeoConditionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String main});
}

/// @nodoc
class __$WeatherByGeoConditionCopyWithImpl<$Res>
    extends _$WeatherByGeoConditionCopyWithImpl<$Res>
    implements _$WeatherByGeoConditionCopyWith<$Res> {
  __$WeatherByGeoConditionCopyWithImpl(_WeatherByGeoCondition _value,
      $Res Function(_WeatherByGeoCondition) _then)
      : super(_value, (v) => _then(v as _WeatherByGeoCondition));

  @override
  _WeatherByGeoCondition get _value => super._value as _WeatherByGeoCondition;

  @override
  $Res call({
    Object id = freezed,
    Object main = freezed,
  }) {
    return _then(_WeatherByGeoCondition(
      id: id == freezed ? _value.id : id as int,
      main: main == freezed ? _value.main : main as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherByGeoCondition implements _WeatherByGeoCondition {
  const _$_WeatherByGeoCondition({this.id, this.main});

  factory _$_WeatherByGeoCondition.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherByGeoConditionFromJson(json);

  @override
  final int id;
  @override
  final String main;

  @override
  String toString() {
    return 'WeatherByGeoCondition(id: $id, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherByGeoCondition &&
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
  _$WeatherByGeoConditionCopyWith<_WeatherByGeoCondition> get copyWith =>
      __$WeatherByGeoConditionCopyWithImpl<_WeatherByGeoCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherByGeoConditionToJson(this);
  }
}

abstract class _WeatherByGeoCondition implements WeatherByGeoCondition {
  const factory _WeatherByGeoCondition({int id, String main}) =
      _$_WeatherByGeoCondition;

  factory _WeatherByGeoCondition.fromJson(Map<String, dynamic> json) =
      _$_WeatherByGeoCondition.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  @JsonKey(ignore: true)
  _$WeatherByGeoConditionCopyWith<_WeatherByGeoCondition> get copyWith;
}
