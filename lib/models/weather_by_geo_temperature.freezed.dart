// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_by_geo_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherByGeoTemperature _$WeatherByGeoTemperatureFromJson(
    Map<String, dynamic> json) {
  return _WeatherByGeoTemperature.fromJson(json);
}

/// @nodoc
class _$WeatherByGeoTemperatureTearOff {
  const _$WeatherByGeoTemperatureTearOff();

// ignore: unused_element
  _WeatherByGeoTemperature call({num temp}) {
    return _WeatherByGeoTemperature(
      temp: temp,
    );
  }

// ignore: unused_element
  WeatherByGeoTemperature fromJson(Map<String, Object> json) {
    return WeatherByGeoTemperature.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherByGeoTemperature = _$WeatherByGeoTemperatureTearOff();

/// @nodoc
mixin _$WeatherByGeoTemperature {
  num get temp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherByGeoTemperatureCopyWith<WeatherByGeoTemperature> get copyWith;
}

/// @nodoc
abstract class $WeatherByGeoTemperatureCopyWith<$Res> {
  factory $WeatherByGeoTemperatureCopyWith(WeatherByGeoTemperature value,
          $Res Function(WeatherByGeoTemperature) then) =
      _$WeatherByGeoTemperatureCopyWithImpl<$Res>;
  $Res call({num temp});
}

/// @nodoc
class _$WeatherByGeoTemperatureCopyWithImpl<$Res>
    implements $WeatherByGeoTemperatureCopyWith<$Res> {
  _$WeatherByGeoTemperatureCopyWithImpl(this._value, this._then);

  final WeatherByGeoTemperature _value;
  // ignore: unused_field
  final $Res Function(WeatherByGeoTemperature) _then;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed ? _value.temp : temp as num,
    ));
  }
}

/// @nodoc
abstract class _$WeatherByGeoTemperatureCopyWith<$Res>
    implements $WeatherByGeoTemperatureCopyWith<$Res> {
  factory _$WeatherByGeoTemperatureCopyWith(_WeatherByGeoTemperature value,
          $Res Function(_WeatherByGeoTemperature) then) =
      __$WeatherByGeoTemperatureCopyWithImpl<$Res>;
  @override
  $Res call({num temp});
}

/// @nodoc
class __$WeatherByGeoTemperatureCopyWithImpl<$Res>
    extends _$WeatherByGeoTemperatureCopyWithImpl<$Res>
    implements _$WeatherByGeoTemperatureCopyWith<$Res> {
  __$WeatherByGeoTemperatureCopyWithImpl(_WeatherByGeoTemperature _value,
      $Res Function(_WeatherByGeoTemperature) _then)
      : super(_value, (v) => _then(v as _WeatherByGeoTemperature));

  @override
  _WeatherByGeoTemperature get _value =>
      super._value as _WeatherByGeoTemperature;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_WeatherByGeoTemperature(
      temp: temp == freezed ? _value.temp : temp as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherByGeoTemperature implements _WeatherByGeoTemperature {
  const _$_WeatherByGeoTemperature({this.temp});

  factory _$_WeatherByGeoTemperature.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherByGeoTemperatureFromJson(json);

  @override
  final num temp;

  @override
  String toString() {
    return 'WeatherByGeoTemperature(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherByGeoTemperature &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @JsonKey(ignore: true)
  @override
  _$WeatherByGeoTemperatureCopyWith<_WeatherByGeoTemperature> get copyWith =>
      __$WeatherByGeoTemperatureCopyWithImpl<_WeatherByGeoTemperature>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherByGeoTemperatureToJson(this);
  }
}

abstract class _WeatherByGeoTemperature implements WeatherByGeoTemperature {
  const factory _WeatherByGeoTemperature({num temp}) =
      _$_WeatherByGeoTemperature;

  factory _WeatherByGeoTemperature.fromJson(Map<String, dynamic> json) =
      _$_WeatherByGeoTemperature.fromJson;

  @override
  num get temp;
  @override
  @JsonKey(ignore: true)
  _$WeatherByGeoTemperatureCopyWith<_WeatherByGeoTemperature> get copyWith;
}
