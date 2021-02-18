import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_city_city.dart';
import 'forecast_city_items.dart';

part 'forecast_by_city_model.freezed.dart';
part 'forecast_by_city_model.g.dart';

@freezed
abstract class ForecastByCity with _$ForecastByCity {
  const factory ForecastByCity(
      {List<ForecastByCityItems> list,
      ForecastCityByCity city}) = _ForecastByCity;

  factory ForecastByCity.fromJson(Map<String, dynamic> json) =>
      _$ForecastByCityFromJson(json);
}
