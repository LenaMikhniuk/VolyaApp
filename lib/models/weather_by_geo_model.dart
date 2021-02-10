import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:volyaApp/models/weather_by_geo_temperature.dart';
import 'package:volyaApp/models/weather_geo_condition.dart';

part 'weather_by_geo_model.freezed.dart';
part 'weather_by_geo_model.g.dart';

@freezed
abstract class WeatherByGeo with _$WeatherByGeo {
  const factory WeatherByGeo(
      {List<WeatherByGeoCondition> weather,
      WeatherByGeoTemperature main,
      String name}) = _WeatherByGeo;

  factory WeatherByGeo.fromJson(Map<String, dynamic> json) =>
      _$WeatherByGeoFromJson(json);
}
