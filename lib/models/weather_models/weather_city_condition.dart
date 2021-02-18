import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_city_condition.freezed.dart';
part 'weather_city_condition.g.dart';

@freezed
abstract class WeatherByCityCondition with _$WeatherByCityCondition {
  const factory WeatherByCityCondition({int id, String main}) =
      _WeatherByCityCondition;

  factory WeatherByCityCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherByCityConditionFromJson(json);
}
