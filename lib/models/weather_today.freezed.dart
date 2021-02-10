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
  _WeatherTodayModel call({num temp, int id, String cityName}) {
    return _WeatherTodayModel(
      temp: temp,
      id: id,
      cityName: cityName,
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
  num get temp;
  int get id;
  String get cityName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherTodayModelCopyWith<WeatherTodayModel> get copyWith;
}

/// @nodoc
abstract class $WeatherTodayModelCopyWith<$Res> {
  factory $WeatherTodayModelCopyWith(
          WeatherTodayModel value, $Res Function(WeatherTodayModel) then) =
      _$WeatherTodayModelCopyWithImpl<$Res>;
  $Res call({num temp, int id, String cityName});
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
    Object temp = freezed,
    Object id = freezed,
    Object cityName = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed ? _value.temp : temp as num,
      id: id == freezed ? _value.id : id as int,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherTodayModelCopyWith<$Res>
    implements $WeatherTodayModelCopyWith<$Res> {
  factory _$WeatherTodayModelCopyWith(
          _WeatherTodayModel value, $Res Function(_WeatherTodayModel) then) =
      __$WeatherTodayModelCopyWithImpl<$Res>;
  @override
  $Res call({num temp, int id, String cityName});
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
    Object temp = freezed,
    Object id = freezed,
    Object cityName = freezed,
  }) {
    return _then(_WeatherTodayModel(
      temp: temp == freezed ? _value.temp : temp as num,
      id: id == freezed ? _value.id : id as int,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherTodayModel implements _WeatherTodayModel {
  const _$_WeatherTodayModel({this.temp, this.id, this.cityName});

  factory _$_WeatherTodayModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherTodayModelFromJson(json);

  @override
  final num temp;
  @override
  final int id;
  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherTodayModel(temp: $temp, id: $id, cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherTodayModel &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cityName);

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
  const factory _WeatherTodayModel({num temp, int id, String cityName}) =
      _$_WeatherTodayModel;

  factory _WeatherTodayModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherTodayModel.fromJson;

  @override
  num get temp;
  @override
  int get id;
  @override
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$WeatherTodayModelCopyWith<_WeatherTodayModel> get copyWith;
}
