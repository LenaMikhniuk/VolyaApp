import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:volyaApp/models/weather_models/weather_by_city_temperature.dart';
import 'package:volyaApp/models/weather_models/weather_city_condition.dart';

part 'weather_today.freezed.dart';
part 'weather_today.g.dart';

@freezed
abstract class WeatherTodayModel with _$WeatherTodayModel {
  const factory WeatherTodayModel(
      {List<WeatherByCityCondition> weather,
      WeatherByCityTemperature main,
      String name}) = _WeatherTodayModel;

  factory WeatherTodayModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherTodayModelFromJson(json);
}
