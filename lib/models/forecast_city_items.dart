import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:volyaApp/models/forecast_by_city_temperature.dart';
import 'package:volyaApp/models/forecast_city_condition.dart';

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
