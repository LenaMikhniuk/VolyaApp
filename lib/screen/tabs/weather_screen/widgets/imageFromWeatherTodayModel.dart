import 'package:flutter/material.dart';
import 'package:volyaApp/models/weather_today.dart';
import 'package:volyaApp/util/weather_utils.dart';

class ImageFromWeatherTodayModel extends StatelessWidget {
  final WeatherTodayModel weatherToday;

  final String weatherImage;
  ImageFromWeatherTodayModel({this.weatherToday, this.weatherImage});

  @override
  Widget build(BuildContext context) {
    return weatherImage == null
        ? Container()
        : Image.asset(
            WeatherUtils.getWeatherImage(
                weatherToday?.weather?.first?.id, weatherToday?.main?.temp),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          );
  }
}
