// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_by_geo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherByGeo _$_$_WeatherByGeoFromJson(Map<String, dynamic> json) {
  return _$_WeatherByGeo(
    weather: (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherByGeoCondition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    main: json['main'] == null
        ? null
        : WeatherByGeoTemperature.fromJson(
            json['main'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_WeatherByGeoToJson(_$_WeatherByGeo instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'name': instance.name,
    };
