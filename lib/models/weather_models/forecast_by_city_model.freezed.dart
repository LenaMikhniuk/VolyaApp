// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_by_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ForecastByCity _$ForecastByCityFromJson(Map<String, dynamic> json) {
  return _ForecastByCity.fromJson(json);
}

/// @nodoc
class _$ForecastByCityTearOff {
  const _$ForecastByCityTearOff();

// ignore: unused_element
  _ForecastByCity call(
      {List<ForecastByCityItems> list, ForecastCityByCity city}) {
    return _ForecastByCity(
      list: list,
      city: city,
    );
  }

// ignore: unused_element
  ForecastByCity fromJson(Map<String, Object> json) {
    return ForecastByCity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastByCity = _$ForecastByCityTearOff();

/// @nodoc
mixin _$ForecastByCity {
  List<ForecastByCityItems> get list;
  ForecastCityByCity get city;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ForecastByCityCopyWith<ForecastByCity> get copyWith;
}

/// @nodoc
abstract class $ForecastByCityCopyWith<$Res> {
  factory $ForecastByCityCopyWith(
          ForecastByCity value, $Res Function(ForecastByCity) then) =
      _$ForecastByCityCopyWithImpl<$Res>;
  $Res call({List<ForecastByCityItems> list, ForecastCityByCity city});

  $ForecastCityByCityCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastByCityCopyWithImpl<$Res>
    implements $ForecastByCityCopyWith<$Res> {
  _$ForecastByCityCopyWithImpl(this._value, this._then);

  final ForecastByCity _value;
  // ignore: unused_field
  final $Res Function(ForecastByCity) _then;

  @override
  $Res call({
    Object list = freezed,
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed ? _value.list : list as List<ForecastByCityItems>,
      city: city == freezed ? _value.city : city as ForecastCityByCity,
    ));
  }

  @override
  $ForecastCityByCityCopyWith<$Res> get city {
    if (_value.city == null) {
      return null;
    }
    return $ForecastCityByCityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastByCityCopyWith<$Res>
    implements $ForecastByCityCopyWith<$Res> {
  factory _$ForecastByCityCopyWith(
          _ForecastByCity value, $Res Function(_ForecastByCity) then) =
      __$ForecastByCityCopyWithImpl<$Res>;
  @override
  $Res call({List<ForecastByCityItems> list, ForecastCityByCity city});

  @override
  $ForecastCityByCityCopyWith<$Res> get city;
}

/// @nodoc
class __$ForecastByCityCopyWithImpl<$Res>
    extends _$ForecastByCityCopyWithImpl<$Res>
    implements _$ForecastByCityCopyWith<$Res> {
  __$ForecastByCityCopyWithImpl(
      _ForecastByCity _value, $Res Function(_ForecastByCity) _then)
      : super(_value, (v) => _then(v as _ForecastByCity));

  @override
  _ForecastByCity get _value => super._value as _ForecastByCity;

  @override
  $Res call({
    Object list = freezed,
    Object city = freezed,
  }) {
    return _then(_ForecastByCity(
      list: list == freezed ? _value.list : list as List<ForecastByCityItems>,
      city: city == freezed ? _value.city : city as ForecastCityByCity,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ForecastByCity implements _ForecastByCity {
  const _$_ForecastByCity({this.list, this.city});

  factory _$_ForecastByCity.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastByCityFromJson(json);

  @override
  final List<ForecastByCityItems> list;
  @override
  final ForecastCityByCity city;

  @override
  String toString() {
    return 'ForecastByCity(list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastByCity &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$ForecastByCityCopyWith<_ForecastByCity> get copyWith =>
      __$ForecastByCityCopyWithImpl<_ForecastByCity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastByCityToJson(this);
  }
}

abstract class _ForecastByCity implements ForecastByCity {
  const factory _ForecastByCity(
      {List<ForecastByCityItems> list,
      ForecastCityByCity city}) = _$_ForecastByCity;

  factory _ForecastByCity.fromJson(Map<String, dynamic> json) =
      _$_ForecastByCity.fromJson;

  @override
  List<ForecastByCityItems> get list;
  @override
  ForecastCityByCity get city;
  @override
  @JsonKey(ignore: true)
  _$ForecastByCityCopyWith<_ForecastByCity> get copyWith;
}
