// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_by_city_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherByCityTemperature _$WeatherByCityTemperatureFromJson(
    Map<String, dynamic> json) {
  return _WeatherByCityTemperature.fromJson(json);
}

/// @nodoc
class _$WeatherByCityTemperatureTearOff {
  const _$WeatherByCityTemperatureTearOff();

// ignore: unused_element
  _WeatherByCityTemperature call({num temp}) {
    return _WeatherByCityTemperature(
      temp: temp,
    );
  }

// ignore: unused_element
  WeatherByCityTemperature fromJson(Map<String, Object> json) {
    return WeatherByCityTemperature.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherByCityTemperature = _$WeatherByCityTemperatureTearOff();

/// @nodoc
mixin _$WeatherByCityTemperature {
  num get temp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherByCityTemperatureCopyWith<WeatherByCityTemperature> get copyWith;
}

/// @nodoc
abstract class $WeatherByCityTemperatureCopyWith<$Res> {
  factory $WeatherByCityTemperatureCopyWith(WeatherByCityTemperature value,
          $Res Function(WeatherByCityTemperature) then) =
      _$WeatherByCityTemperatureCopyWithImpl<$Res>;
  $Res call({num temp});
}

/// @nodoc
class _$WeatherByCityTemperatureCopyWithImpl<$Res>
    implements $WeatherByCityTemperatureCopyWith<$Res> {
  _$WeatherByCityTemperatureCopyWithImpl(this._value, this._then);

  final WeatherByCityTemperature _value;
  // ignore: unused_field
  final $Res Function(WeatherByCityTemperature) _then;

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
abstract class _$WeatherByCityTemperatureCopyWith<$Res>
    implements $WeatherByCityTemperatureCopyWith<$Res> {
  factory _$WeatherByCityTemperatureCopyWith(_WeatherByCityTemperature value,
          $Res Function(_WeatherByCityTemperature) then) =
      __$WeatherByCityTemperatureCopyWithImpl<$Res>;
  @override
  $Res call({num temp});
}

/// @nodoc
class __$WeatherByCityTemperatureCopyWithImpl<$Res>
    extends _$WeatherByCityTemperatureCopyWithImpl<$Res>
    implements _$WeatherByCityTemperatureCopyWith<$Res> {
  __$WeatherByCityTemperatureCopyWithImpl(_WeatherByCityTemperature _value,
      $Res Function(_WeatherByCityTemperature) _then)
      : super(_value, (v) => _then(v as _WeatherByCityTemperature));

  @override
  _WeatherByCityTemperature get _value =>
      super._value as _WeatherByCityTemperature;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_WeatherByCityTemperature(
      temp: temp == freezed ? _value.temp : temp as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherByCityTemperature implements _WeatherByCityTemperature {
  const _$_WeatherByCityTemperature({this.temp});

  factory _$_WeatherByCityTemperature.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherByCityTemperatureFromJson(json);

  @override
  final num temp;

  @override
  String toString() {
    return 'WeatherByCityTemperature(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherByCityTemperature &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @JsonKey(ignore: true)
  @override
  _$WeatherByCityTemperatureCopyWith<_WeatherByCityTemperature> get copyWith =>
      __$WeatherByCityTemperatureCopyWithImpl<_WeatherByCityTemperature>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherByCityTemperatureToJson(this);
  }
}

abstract class _WeatherByCityTemperature implements WeatherByCityTemperature {
  const factory _WeatherByCityTemperature({num temp}) =
      _$_WeatherByCityTemperature;

  factory _WeatherByCityTemperature.fromJson(Map<String, dynamic> json) =
      _$_WeatherByCityTemperature.fromJson;

  @override
  num get temp;
  @override
  @JsonKey(ignore: true)
  _$WeatherByCityTemperatureCopyWith<_WeatherByCityTemperature> get copyWith;
}
