// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_by_city_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ForecastByCityTemperature _$ForecastByCityTemperatureFromJson(
    Map<String, dynamic> json) {
  return _ForecastByCityTemperature.fromJson(json);
}

/// @nodoc
class _$ForecastByCityTemperatureTearOff {
  const _$ForecastByCityTemperatureTearOff();

// ignore: unused_element
  _ForecastByCityTemperature call({num temp}) {
    return _ForecastByCityTemperature(
      temp: temp,
    );
  }

// ignore: unused_element
  ForecastByCityTemperature fromJson(Map<String, Object> json) {
    return ForecastByCityTemperature.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastByCityTemperature = _$ForecastByCityTemperatureTearOff();

/// @nodoc
mixin _$ForecastByCityTemperature {
  num get temp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ForecastByCityTemperatureCopyWith<ForecastByCityTemperature> get copyWith;
}

/// @nodoc
abstract class $ForecastByCityTemperatureCopyWith<$Res> {
  factory $ForecastByCityTemperatureCopyWith(ForecastByCityTemperature value,
          $Res Function(ForecastByCityTemperature) then) =
      _$ForecastByCityTemperatureCopyWithImpl<$Res>;
  $Res call({num temp});
}

/// @nodoc
class _$ForecastByCityTemperatureCopyWithImpl<$Res>
    implements $ForecastByCityTemperatureCopyWith<$Res> {
  _$ForecastByCityTemperatureCopyWithImpl(this._value, this._then);

  final ForecastByCityTemperature _value;
  // ignore: unused_field
  final $Res Function(ForecastByCityTemperature) _then;

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
abstract class _$ForecastByCityTemperatureCopyWith<$Res>
    implements $ForecastByCityTemperatureCopyWith<$Res> {
  factory _$ForecastByCityTemperatureCopyWith(_ForecastByCityTemperature value,
          $Res Function(_ForecastByCityTemperature) then) =
      __$ForecastByCityTemperatureCopyWithImpl<$Res>;
  @override
  $Res call({num temp});
}

/// @nodoc
class __$ForecastByCityTemperatureCopyWithImpl<$Res>
    extends _$ForecastByCityTemperatureCopyWithImpl<$Res>
    implements _$ForecastByCityTemperatureCopyWith<$Res> {
  __$ForecastByCityTemperatureCopyWithImpl(_ForecastByCityTemperature _value,
      $Res Function(_ForecastByCityTemperature) _then)
      : super(_value, (v) => _then(v as _ForecastByCityTemperature));

  @override
  _ForecastByCityTemperature get _value =>
      super._value as _ForecastByCityTemperature;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_ForecastByCityTemperature(
      temp: temp == freezed ? _value.temp : temp as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ForecastByCityTemperature implements _ForecastByCityTemperature {
  const _$_ForecastByCityTemperature({this.temp});

  factory _$_ForecastByCityTemperature.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastByCityTemperatureFromJson(json);

  @override
  final num temp;

  @override
  String toString() {
    return 'ForecastByCityTemperature(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastByCityTemperature &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @JsonKey(ignore: true)
  @override
  _$ForecastByCityTemperatureCopyWith<_ForecastByCityTemperature>
      get copyWith =>
          __$ForecastByCityTemperatureCopyWithImpl<_ForecastByCityTemperature>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastByCityTemperatureToJson(this);
  }
}

abstract class _ForecastByCityTemperature implements ForecastByCityTemperature {
  const factory _ForecastByCityTemperature({num temp}) =
      _$_ForecastByCityTemperature;

  factory _ForecastByCityTemperature.fromJson(Map<String, dynamic> json) =
      _$_ForecastByCityTemperature.fromJson;

  @override
  num get temp;
  @override
  @JsonKey(ignore: true)
  _$ForecastByCityTemperatureCopyWith<_ForecastByCityTemperature> get copyWith;
}
