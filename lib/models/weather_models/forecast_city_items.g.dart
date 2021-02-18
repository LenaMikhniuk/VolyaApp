// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_city_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastByCityItems _$_$_ForecastByCityItemsFromJson(
    Map<String, dynamic> json) {
  return _$_ForecastByCityItems(
    dt: json['dt'] as int,
    weather: (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : ForecastByCityCondition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    main: json['main'] == null
        ? null
        : ForecastByCityTemperature.fromJson(
            json['main'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ForecastByCityItemsToJson(
        _$_ForecastByCityItems instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'weather': instance.weather,
      'main': instance.main,
    };
