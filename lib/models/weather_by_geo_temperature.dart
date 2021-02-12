import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_by_geo_temperature.freezed.dart';
part 'weather_by_geo_temperature.g.dart';

@freezed
abstract class WeatherByGeoTemperature with _$WeatherByGeoTemperature {
  const factory WeatherByGeoTemperature({num temp}) = _WeatherByGeoTemperature;

  factory WeatherByGeoTemperature.fromJson(Map<String, dynamic> json) =>
      _$WeatherByGeoTemperatureFromJson(json);
}
