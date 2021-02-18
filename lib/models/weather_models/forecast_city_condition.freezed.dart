// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_city_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ForecastByCityCondition _$ForecastByCityConditionFromJson(
    Map<String, dynamic> json) {
  return _ForecastByCityCondition.fromJson(json);
}

/// @nodoc
class _$ForecastByCityConditionTearOff {
  const _$ForecastByCityConditionTearOff();

// ignore: unused_element
  _ForecastByCityCondition call({int id, String main}) {
    return _ForecastByCityCondition(
      id: id,
      main: main,
    );
  }

// ignore: unused_element
  ForecastByCityCondition fromJson(Map<String, Object> json) {
    return ForecastByCityCondition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastByCityCondition = _$ForecastByCityConditionTearOff();

/// @nodoc
mixin _$ForecastByCityCondition {
  int get id;
  String get main;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ForecastByCityConditionCopyWith<ForecastByCityCondition> get copyWith;
}

/// @nodoc
abstract class $ForecastByCityConditionCopyWith<$Res> {
  factory $ForecastByCityConditionCopyWith(ForecastByCityCondition value,
          $Res Function(ForecastByCityCondition) then) =
      _$ForecastByCityConditionCopyWithImpl<$Res>;
  $Res call({int id, String main});
}

/// @nodoc
class _$ForecastByCityConditionCopyWithImpl<$Res>
    implements $ForecastByCityConditionCopyWith<$Res> {
  _$ForecastByCityConditionCopyWithImpl(this._value, this._then);

  final ForecastByCityCondition _value;
  // ignore: unused_field
  final $Res Function(ForecastByCityCondition) _then;

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
abstract class _$ForecastByCityConditionCopyWith<$Res>
    implements $ForecastByCityConditionCopyWith<$Res> {
  factory _$ForecastByCityConditionCopyWith(_ForecastByCityCondition value,
          $Res Function(_ForecastByCityCondition) then) =
      __$ForecastByCityConditionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String main});
}

/// @nodoc
class __$ForecastByCityConditionCopyWithImpl<$Res>
    extends _$ForecastByCityConditionCopyWithImpl<$Res>
    implements _$ForecastByCityConditionCopyWith<$Res> {
  __$ForecastByCityConditionCopyWithImpl(_ForecastByCityCondition _value,
      $Res Function(_ForecastByCityCondition) _then)
      : super(_value, (v) => _then(v as _ForecastByCityCondition));

  @override
  _ForecastByCityCondition get _value =>
      super._value as _ForecastByCityCondition;

  @override
  $Res call({
    Object id = freezed,
    Object main = freezed,
  }) {
    return _then(_ForecastByCityCondition(
      id: id == freezed ? _value.id : id as int,
      main: main == freezed ? _value.main : main as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ForecastByCityCondition implements _ForecastByCityCondition {
  const _$_ForecastByCityCondition({this.id, this.main});

  factory _$_ForecastByCityCondition.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastByCityConditionFromJson(json);

  @override
  final int id;
  @override
  final String main;

  @override
  String toString() {
    return 'ForecastByCityCondition(id: $id, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastByCityCondition &&
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
  _$ForecastByCityConditionCopyWith<_ForecastByCityCondition> get copyWith =>
      __$ForecastByCityConditionCopyWithImpl<_ForecastByCityCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastByCityConditionToJson(this);
  }
}

abstract class _ForecastByCityCondition implements ForecastByCityCondition {
  const factory _ForecastByCityCondition({int id, String main}) =
      _$_ForecastByCityCondition;

  factory _ForecastByCityCondition.fromJson(Map<String, dynamic> json) =
      _$_ForecastByCityCondition.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  @JsonKey(ignore: true)
  _$ForecastByCityConditionCopyWith<_ForecastByCityCondition> get copyWith;
}
