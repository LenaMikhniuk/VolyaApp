import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_by_city_temperature.dart';
import 'forecast_city_condition.dart';

part 'forecast_city_items.freezed.dart';
part 'forecast_city_items.g.dart';

@freezed
abstract class ForecastByCityItems with _$ForecastByCityItems {
  const factory ForecastByCityItems(
      {int dt,
      List<ForecastByCityCondition> weather,
      ForecastByCityTemperature main}) = _ForecastByCityItems;

  factory ForecastByCityItems.fromJson(Map<String, dynamic> json) =>
      _$ForecastByCityItemsFromJson(json);
}
