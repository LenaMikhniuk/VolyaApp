// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_by_geo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherByGeo _$WeatherByGeoFromJson(Map<String, dynamic> json) {
  return _WeatherByGeo.fromJson(json);
}

/// @nodoc
class _$WeatherByGeoTearOff {
  const _$WeatherByGeoTearOff();

// ignore: unused_element
  _WeatherByGeo call(
      {List<WeatherByGeoCondition> weather,
      WeatherByGeoTemperature main,
      String name}) {
    return _WeatherByGeo(
      weather: weather,
      main: main,
      name: name,
    );
  }

// ignore: unused_element
  WeatherByGeo fromJson(Map<String, Object> json) {
    return WeatherByGeo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherByGeo = _$WeatherByGeoTearOff();

/// @nodoc
mixin _$WeatherByGeo {
  List<WeatherByGeoCondition> get weather;
  WeatherByGeoTemperature get main;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherByGeoCopyWith<WeatherByGeo> get copyWith;
}

/// @nodoc
abstract class $WeatherByGeoCopyWith<$Res> {
  factory $WeatherByGeoCopyWith(
          WeatherByGeo value, $Res Function(WeatherByGeo) then) =
      _$WeatherByGeoCopyWithImpl<$Res>;
  $Res call(
      {List<WeatherByGeoCondition> weather,
      WeatherByGeoTemperature main,
      String name});

  $WeatherByGeoTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherByGeoCopyWithImpl<$Res> implements $WeatherByGeoCopyWith<$Res> {
  _$WeatherByGeoCopyWithImpl(this._value, this._then);

  final WeatherByGeo _value;
  // ignore: unused_field
  final $Res Function(WeatherByGeo) _then;

  @override
  $Res call({
    Object weather = freezed,
    Object main = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather as List<WeatherByGeoCondition>,
      main: main == freezed ? _value.main : main as WeatherByGeoTemperature,
      name: name == freezed ? _value.name : name as String,
    ));
  }

  @override
  $WeatherByGeoTemperatureCopyWith<$Res> get main {
    if (_value.main == null) {
      return null;
    }
    return $WeatherByGeoTemperatureCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherByGeoCopyWith<$Res>
    implements $WeatherByGeoCopyWith<$Res> {
  factory _$WeatherByGeoCopyWith(
          _WeatherByGeo value, $Res Function(_WeatherByGeo) then) =
      __$WeatherByGeoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WeatherByGeoCondition> weather,
      WeatherByGeoTemperature main,
      String name});

  @override
  $WeatherByGeoTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class __$WeatherByGeoCopyWithImpl<$Res> extends _$WeatherByGeoCopyWithImpl<$Res>
    implements _$WeatherByGeoCopyWith<$Res> {
  __$WeatherByGeoCopyWithImpl(
      _WeatherByGeo _value, $Res Function(_WeatherByGeo) _then)
      : super(_value, (v) => _then(v as _WeatherByGeo));

  @override
  _WeatherByGeo get _value => super._value as _WeatherByGeo;

  @override
  $Res call({
    Object weather = freezed,
    Object main = freezed,
    Object name = freezed,
  }) {
    return _then(_WeatherByGeo(
      weather: weather == freezed
          ? _value.weather
          : weather as List<WeatherByGeoCondition>,
      main: main == freezed ? _value.main : main as WeatherByGeoTemperature,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherByGeo implements _WeatherByGeo {
  const _$_WeatherByGeo({this.weather, this.main, this.name});

  factory _$_WeatherByGeo.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherByGeoFromJson(json);

  @override
  final List<WeatherByGeoCondition> weather;
  @override
  final WeatherByGeoTemperature main;
  @override
  final String name;

  @override
  String toString() {
    return 'WeatherByGeo(weather: $weather, main: $main, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherByGeo &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$WeatherByGeoCopyWith<_WeatherByGeo> get copyWith =>
      __$WeatherByGeoCopyWithImpl<_WeatherByGeo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherByGeoToJson(this);
  }
}

abstract class _WeatherByGeo implements WeatherByGeo {
  const factory _WeatherByGeo(
      {List<WeatherByGeoCondition> weather,
      WeatherByGeoTemperature main,
      String name}) = _$_WeatherByGeo;

  factory _WeatherByGeo.fromJson(Map<String, dynamic> json) =
      _$_WeatherByGeo.fromJson;

  @override
  List<WeatherByGeoCondition> get weather;
  @override
  WeatherByGeoTemperature get main;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$WeatherByGeoCopyWith<_WeatherByGeo> get copyWith;
}
