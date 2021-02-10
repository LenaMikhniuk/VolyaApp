import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'weather_today.freezed.dart';
part 'weather_today.g.dart';

@freezed
abstract class WeatherTodayModel with _$WeatherTodayModel {
  const factory WeatherTodayModel({num temp, int id, String cityName}) =
      _WeatherTodayModel;

  factory WeatherTodayModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherTodayModelFromJson(json);
}
