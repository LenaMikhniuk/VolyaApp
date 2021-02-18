import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_by_city_temperature.freezed.dart';
part 'forecast_by_city_temperature.g.dart';

@freezed
abstract class ForecastByCityTemperature with _$ForecastByCityTemperature {
  const factory ForecastByCityTemperature({num temp}) =
      _ForecastByCityTemperature;

  factory ForecastByCityTemperature.fromJson(Map<String, dynamic> json) =>
      _$ForecastByCityTemperatureFromJson(json);
}
