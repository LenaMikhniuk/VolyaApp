import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_city_city.freezed.dart';
part 'forecast_city_city.g.dart';

@freezed
abstract class ForecastCityByCity with _$ForecastCityByCity {
  const factory ForecastCityByCity({String name}) = _ForecastCityByCity;

  factory ForecastCityByCity.fromJson(Map<String, dynamic> json) =>
      _$ForecastCityByCityFromJson(json);
}
