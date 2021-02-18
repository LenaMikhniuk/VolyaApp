// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_city_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ForecastByCityItems _$ForecastByCityItemsFromJson(Map<String, dynamic> json) {
  return _ForecastByCityItems.fromJson(json);
}

/// @nodoc
class _$ForecastByCityItemsTearOff {
  const _$ForecastByCityItemsTearOff();

// ignore: unused_element
  _ForecastByCityItems call(
      {int dt,
      List<ForecastByCityCondition> weather,
      ForecastByCityTemperature main}) {
    return _ForecastByCityItems(
      dt: dt,
      weather: weather,
      main: main,
    );
  }

// ignore: unused_element
  ForecastByCityItems fromJson(Map<String, Object> json) {
    return ForecastByCityItems.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastByCityItems = _$ForecastByCityItemsTearOff();

/// @nodoc
mixin _$ForecastByCityItems {
  int get dt;
  List<ForecastByCityCondition> get weather;
  ForecastByCityTemperature get main;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ForecastByCityItemsCopyWith<ForecastByCityItems> get copyWith;
}

/// @nodoc
abstract class $ForecastByCityItemsCopyWith<$Res> {
  factory $ForecastByCityItemsCopyWith(
          ForecastByCityItems value, $Res Function(ForecastByCityItems) then) =
      _$ForecastByCityItemsCopyWithImpl<$Res>;
  $Res call(
      {int dt,
      List<ForecastByCityCondition> weather,
      ForecastByCityTemperature main});

  $ForecastByCityTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class _$ForecastByCityItemsCopyWithImpl<$Res>
    implements $ForecastByCityItemsCopyWith<$Res> {
  _$ForecastByCityItemsCopyWithImpl(this._value, this._then);

  final ForecastByCityItems _value;
  // ignore: unused_field
  final $Res Function(ForecastByCityItems) _then;

  @override
  $Res call({
    Object dt = freezed,
    Object weather = freezed,
    Object main = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed ? _value.dt : dt as int,
      weather: weather == freezed
          ? _value.weather
          : weather as List<ForecastByCityCondition>,
      main: main == freezed ? _value.main : main as ForecastByCityTemperature,
    ));
  }

  @override
  $ForecastByCityTemperatureCopyWith<$Res> get main {
    if (_value.main == null) {
      return null;
    }
    return $ForecastByCityTemperatureCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastByCityItemsCopyWith<$Res>
    implements $ForecastByCityItemsCopyWith<$Res> {
  factory _$ForecastByCityItemsCopyWith(_ForecastByCityItems value,
          $Res Function(_ForecastByCityItems) then) =
      __$ForecastByCityItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int dt,
      List<ForecastByCityCondition> weather,
      ForecastByCityTemperature main});

  @override
  $ForecastByCityTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class __$ForecastByCityItemsCopyWithImpl<$Res>
    extends _$ForecastByCityItemsCopyWithImpl<$Res>
    implements _$ForecastByCityItemsCopyWith<$Res> {
  __$ForecastByCityItemsCopyWithImpl(
      _ForecastByCityItems _value, $Res Function(_ForecastByCityItems) _then)
      : super(_value, (v) => _then(v as _ForecastByCityItems));

  @override
  _ForecastByCityItems get _value => super._value as _ForecastByCityItems;

  @override
  $Res call({
    Object dt = freezed,
    Object weather = freezed,
    Object main = freezed,
  }) {
    return _then(_ForecastByCityItems(
      dt: dt == freezed ? _value.dt : dt as int,
      weather: weather == freezed
          ? _value.weather
          : weather as List<ForecastByCityCondition>,
      main: main == freezed ? _value.main : main as ForecastByCityTemperature,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ForecastByCityItems implements _ForecastByCityItems {
  const _$_ForecastByCityItems({this.dt, this.weather, this.main});

  factory _$_ForecastByCityItems.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastByCityItemsFromJson(json);

  @override
  final int dt;
  @override
  final List<ForecastByCityCondition> weather;
  @override
  final ForecastByCityTemperature main;

  @override
  String toString() {
    return 'ForecastByCityItems(dt: $dt, weather: $weather, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastByCityItems &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(main);

  @JsonKey(ignore: true)
  @override
  _$ForecastByCityItemsCopyWith<_ForecastByCityItems> get copyWith =>
      __$ForecastByCityItemsCopyWithImpl<_ForecastByCityItems>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastByCityItemsToJson(this);
  }
}

abstract class _ForecastByCityItems implements ForecastByCityItems {
  const factory _ForecastByCityItems(
      {int dt,
      List<ForecastByCityCondition> weather,
      ForecastByCityTemperature main}) = _$_ForecastByCityItems;

  factory _ForecastByCityItems.fromJson(Map<String, dynamic> json) =
      _$_ForecastByCityItems.fromJson;

  @override
  int get dt;
  @override
  List<ForecastByCityCondition> get weather;
  @override
  ForecastByCityTemperature get main;
  @override
  @JsonKey(ignore: true)
  _$ForecastByCityItemsCopyWith<_ForecastByCityItems> get copyWith;
}
