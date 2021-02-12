// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_by_city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastByCity _$_$_ForecastByCityFromJson(Map<String, dynamic> json) {
  return _$_ForecastByCity(
    list: (json['list'] as List)
        ?.map((e) => e == null
            ? null
            : ForecastByCityItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    city: json['city'] == null
        ? null
        : ForecastCityByCity.fromJson(json['city'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ForecastByCityToJson(_$_ForecastByCity instance) =>
    <String, dynamic>{
      'list': instance.list,
      'city': instance.city,
    };
