import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_by_city_temperature.freezed.dart';
part 'weather_by_city_temperature.g.dart';

@freezed
abstract class WeatherByCityTemperature with _$WeatherByCityTemperature {
  const factory WeatherByCityTemperature({num temp}) =
      _WeatherByCityTemperature;

  factory WeatherByCityTemperature.fromJson(Map<String, dynamic> json) =>
      _$WeatherByCityTemperatureFromJson(json);
}
