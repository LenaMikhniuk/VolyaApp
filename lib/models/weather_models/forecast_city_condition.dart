import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_city_condition.freezed.dart';
part 'forecast_city_condition.g.dart';

@freezed
abstract class ForecastByCityCondition with _$ForecastByCityCondition {
  const factory ForecastByCityCondition({int id, String main}) =
      _ForecastByCityCondition;

  factory ForecastByCityCondition.fromJson(Map<String, dynamic> json) =>
      _$ForecastByCityConditionFromJson(json);
}
