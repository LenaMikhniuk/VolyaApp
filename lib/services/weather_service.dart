import 'package:volyaApp/models/forecast_by_city_model.dart';
import 'package:volyaApp/models/forecast_city_items.dart';

import 'package:volyaApp/models/weather_today.dart';
import 'package:volyaApp/services/location.dart';
import 'package:volyaApp/services/networkRequest.dart';

const apiKey = 'f14ab6a28d6abe47bd8189cb3542c3a9';
const openWeatherMapUrl = 'http://api.openweathermap.org/data/2.5/weather';
const openForecastMapUrl = 'http://api.openweathermap.org/data/2.5/forecast';

class WeatherService {
  static Future<WeatherTodayModel> getWeatherByCity(String cityName) async {
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await netWorkRequest.getData();
    print(weatherData);
    return WeatherTodayModel.fromJson(weatherData);
  }

  static Future<WeatherTodayModel> getCurrentLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await netWorkRequest.getData();
    print(weatherData);
    return WeatherTodayModel.fromJson(weatherData);
  }

  static Future<ForecastByCity> getCityForecast(String cityName) async {
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openForecastMapUrl?q=$cityName&appid=$apiKey&units=metric');
    var forecastData = await netWorkRequest.getData();
    final cityResult = ForecastByCity.fromJson(forecastData);
    List<ForecastByCityItems> filteredCityResult = [];
    for (var index = 0; index < cityResult.list.length; index++) {
      if (index == 0 || index % 8 == 0) {
        filteredCityResult.add(cityResult.list[index]);
      }
    }
    return ForecastByCity(list: filteredCityResult);
  }

  static Future<ForecastByCity> getCurrentLocationForecast() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openForecastMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var forecastData = await netWorkRequest.getData();
    final result = ForecastByCity.fromJson(forecastData);
    List<ForecastByCityItems> filteredResult = [];

    for (var index = 0; index < result.list.length; index++) {
      if (index == 0 || index % 8 == 0) {
        filteredResult.add(result.list[index]);
      }
    }
    return ForecastByCity(list: filteredResult);
  }
}
