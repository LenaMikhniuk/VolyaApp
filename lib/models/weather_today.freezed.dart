// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherTodayModel _$WeatherTodayModelFromJson(Map<String, dynamic> json) {
  return _WeatherTodayModel.fromJson(json);
}

/// @nodoc
class _$WeatherTodayModelTearOff {
  const _$WeatherTodayModelTearOff();

// ignore: unused_element
  _WeatherTodayModel call(
      {List<WeatherByCityCondition> weather,
      WeatherByCityTemperature main,
      String name}) {
    return _WeatherTodayModel(
      weather: weather,
      main: main,
      name: name,
    );
  }

// ignore: unused_element
  WeatherTodayModel fromJson(Map<String, Object> json) {
    return WeatherTodayModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherTodayModel = _$WeatherTodayModelTearOff();

/// @nodoc
mixin _$WeatherTodayModel {
  List<WeatherByCityCondition> get weather;
  WeatherByCityTemperature get main;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherTodayModelCopyWith<WeatherTodayModel> get copyWith;
}

/// @nodoc
abstract class $WeatherTodayModelCopyWith<$Res> {
  factory $WeatherTodayModelCopyWith(
          WeatherTodayModel value, $Res Function(WeatherTodayModel) then) =
      _$WeatherTodayModelCopyWithImpl<$Res>;
  $Res call(
      {List<WeatherByCityCondition> weather,
      WeatherByCityTemperature main,
      String name});

  $WeatherByCityTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherTodayModelCopyWithImpl<$Res>
    implements $WeatherTodayModelCopyWith<$Res> {
  _$WeatherTodayModelCopyWithImpl(this._value, this._then);

  final WeatherTodayModel _value;
  // ignore: unused_field
  final $Res Function(WeatherTodayModel) _then;

  @override
  $Res call({
    Object weather = freezed,
    Object main = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather as List<WeatherByCityCondition>,
      main: main == freezed ? _value.main : main as WeatherByCityTemperature,
      name: name == freezed ? _value.name : name as String,
    ));
  }

  @override
  $WeatherByCityTemperatureCopyWith<$Res> get main {
    if (_value.main == null) {
      return null;
    }
    return $WeatherByCityTemperatureCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherTodayModelCopyWith<$Res>
    implements $WeatherTodayModelCopyWith<$Res> {
  factory _$WeatherTodayModelCopyWith(
          _WeatherTodayModel value, $Res Function(_WeatherTodayModel) then) =
      __$WeatherTodayModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WeatherByCityCondition> weather,
      WeatherByCityTemperature main,
      String name});

  @override
  $WeatherByCityTemperatureCopyWith<$Res> get main;
}

/// @nodoc
class __$WeatherTodayModelCopyWithImpl<$Res>
    extends _$WeatherTodayModelCopyWithImpl<$Res>
    implements _$WeatherTodayModelCopyWith<$Res> {
  __$WeatherTodayModelCopyWithImpl(
      _WeatherTodayModel _value, $Res Function(_WeatherTodayModel) _then)
      : super(_value, (v) => _then(v as _WeatherTodayModel));

  @override
  _WeatherTodayModel get _value => super._value as _WeatherTodayModel;

  @override
  $Res call({
    Object weather = freezed,
    Object main = freezed,
    Object name = freezed,
  }) {
    return _then(_WeatherTodayModel(
      weather: weather == freezed
          ? _value.weather
          : weather as List<WeatherByCityCondition>,
      main: main == freezed ? _value.main : main as WeatherByCityTemperature,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherTodayModel implements _WeatherTodayModel {
  const _$_WeatherTodayModel({this.weather, this.main, this.name});

  factory _$_WeatherTodayModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherTodayModelFromJson(json);

  @override
  final List<WeatherByCityCondition> weather;
  @override
  final WeatherByCityTemperature main;
  @override
  final String name;

  @override
  String toString() {
    return 'WeatherTodayModel(weather: $weather, main: $main, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherTodayModel &&
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
  _$WeatherTodayModelCopyWith<_WeatherTodayModel> get copyWith =>
      __$WeatherTodayModelCopyWithImpl<_WeatherTodayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherTodayModelToJson(this);
  }
}

abstract class _WeatherTodayModel implements WeatherTodayModel {
  const factory _WeatherTodayModel(
      {List<WeatherByCityCondition> weather,
      WeatherByCityTemperature main,
      String name}) = _$_WeatherTodayModel;

  factory _WeatherTodayModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherTodayModel.fromJson;

  @override
  List<WeatherByCityCondition> get weather;
  @override
  WeatherByCityTemperature get main;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$WeatherTodayModelCopyWith<_WeatherTodayModel> get copyWith;
}
