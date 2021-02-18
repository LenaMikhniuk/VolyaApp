// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_city_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ForecastCityByCity _$ForecastCityByCityFromJson(Map<String, dynamic> json) {
  return _ForecastCityByCity.fromJson(json);
}

/// @nodoc
class _$ForecastCityByCityTearOff {
  const _$ForecastCityByCityTearOff();

// ignore: unused_element
  _ForecastCityByCity call({String name}) {
    return _ForecastCityByCity(
      name: name,
    );
  }

// ignore: unused_element
  ForecastCityByCity fromJson(Map<String, Object> json) {
    return ForecastCityByCity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastCityByCity = _$ForecastCityByCityTearOff();

/// @nodoc
mixin _$ForecastCityByCity {
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ForecastCityByCityCopyWith<ForecastCityByCity> get copyWith;
}

/// @nodoc
abstract class $ForecastCityByCityCopyWith<$Res> {
  factory $ForecastCityByCityCopyWith(
          ForecastCityByCity value, $Res Function(ForecastCityByCity) then) =
      _$ForecastCityByCityCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ForecastCityByCityCopyWithImpl<$Res>
    implements $ForecastCityByCityCopyWith<$Res> {
  _$ForecastCityByCityCopyWithImpl(this._value, this._then);

  final ForecastCityByCity _value;
  // ignore: unused_field
  final $Res Function(ForecastCityByCity) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$ForecastCityByCityCopyWith<$Res>
    implements $ForecastCityByCityCopyWith<$Res> {
  factory _$ForecastCityByCityCopyWith(
          _ForecastCityByCity value, $Res Function(_ForecastCityByCity) then) =
      __$ForecastCityByCityCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$ForecastCityByCityCopyWithImpl<$Res>
    extends _$ForecastCityByCityCopyWithImpl<$Res>
    implements _$ForecastCityByCityCopyWith<$Res> {
  __$ForecastCityByCityCopyWithImpl(
      _ForecastCityByCity _value, $Res Function(_ForecastCityByCity) _then)
      : super(_value, (v) => _then(v as _ForecastCityByCity));

  @override
  _ForecastCityByCity get _value => super._value as _ForecastCityByCity;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ForecastCityByCity(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ForecastCityByCity implements _ForecastCityByCity {
  const _$_ForecastCityByCity({this.name});

  factory _$_ForecastCityByCity.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastCityByCityFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ForecastCityByCity(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastCityByCity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ForecastCityByCityCopyWith<_ForecastCityByCity> get copyWith =>
      __$ForecastCityByCityCopyWithImpl<_ForecastCityByCity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastCityByCityToJson(this);
  }
}

abstract class _ForecastCityByCity implements ForecastCityByCity {
  const factory _ForecastCityByCity({String name}) = _$_ForecastCityByCity;

  factory _ForecastCityByCity.fromJson(Map<String, dynamic> json) =
      _$_ForecastCityByCity.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ForecastCityByCityCopyWith<_ForecastCityByCity> get copyWith;
}
