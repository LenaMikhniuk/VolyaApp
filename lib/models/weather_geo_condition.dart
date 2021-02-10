import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'weather_geo_condition.freezed.dart';
part 'weather_geo_condition.g.dart';

@freezed
abstract class WeatherByGeoCondition with _$WeatherByGeoCondition {
  const factory WeatherByGeoCondition({int id, String main}) =
      _WeatherByGeoCondition;

  factory WeatherByGeoCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherByGeoConditionFromJson(json);
}
