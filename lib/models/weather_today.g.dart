// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherTodayModel _$_$_WeatherTodayModelFromJson(Map<String, dynamic> json) {
  return _$_WeatherTodayModel(
    temp: json['temp'] as num,
    id: json['id'] as int,
    cityName: json['cityName'] as String,
  );
}

Map<String, dynamic> _$_$_WeatherTodayModelToJson(
        _$_WeatherTodayModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'id': instance.id,
      'cityName': instance.cityName,
    };
