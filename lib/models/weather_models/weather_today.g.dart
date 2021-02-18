// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherTodayModel _$_$_WeatherTodayModelFromJson(Map<String, dynamic> json) {
  return _$_WeatherTodayModel(
    weather: (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherByCityCondition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    main: json['main'] == null
        ? null
        : WeatherByCityTemperature.fromJson(
            json['main'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_WeatherTodayModelToJson(
        _$_WeatherTodayModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'name': instance.name,
    };
