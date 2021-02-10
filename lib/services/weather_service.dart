import 'package:volyaApp/models/forecast_item_model.dart';
import 'package:volyaApp/models/forecast_model.dart';
import 'package:volyaApp/models/weather_by_geo_model.dart';
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

  static Future<WeatherByGeo> getCurrentLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await netWorkRequest.getData();
    print(weatherData);
    return WeatherByGeo.fromJson(weatherData);
  }

  static Future<dynamic> getCityForecast(String cityName) async {
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openForecastMapUrl ?q=$cityName&appid=$apiKey&units=metric');
    var forecastData = await netWorkRequest.getData();
    print(forecastData);
    return forecastData;
  }

  static Future<ForecastModel> getCurrentLocationForecast() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openForecastMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var forecastData = await netWorkRequest.getData();
    final result = ForecastModel.fromJson(forecastData);
    List<ForecastItem> filteredResult = [];

    for (var index = 0; index < result.list.length; index++) {
      if (index == 0 || index % 8 == 0) {
        filteredResult.add(result.list[index]);
      }
    }
    return ForecastModel(list: filteredResult);
  }

  static String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  static String getWeatherImage(int condition, num temp) {
    print('condition - $condition');
    print('temp - $temp');
    if (condition < 300) {
      return 'assets/images/thun.jpg';
    } else if (condition < 600 && temp < 18) {
      return 'assets/images/rain cold.jpg';
    } else if (condition < 600 && temp >= 18) {
      return 'assets/images/rain warm.jpg';
    } else if (condition < 700) {
      return 'assets/images/weatherSnow.jpg';
    } else if (condition < 800 && temp < 8) {
      return 'assets/images/fog_cold.jpeg';
    } else if (condition < 800 && temp >= 8) {
      return 'assets/images/fog_warm.jpeg';
    } else if (condition == 800 && temp < 8 && temp > 2) {
      return 'assets/images/cold.jpeg';
    } else if (condition == 800 && temp <= 2) {
      return 'assets/images/winter sun.jpg';
    } else if (condition == 800 && temp >= 8 && temp < 15) {
      return 'assets/images/8_15_sun.jpg';
    } else if (condition == 800 && temp >= 15 && temp < 20) {
      return 'assets/images/16_20_sun.jpg';
    } else if (condition == 800 && temp >= 20) {
      return 'assets/images/21_sun.jpg';
    } else if (condition <= 804 && temp <= 2) {
      return 'assets/images/cloud_winter.jpeg';
    } else if (condition <= 804 && temp < 8 && temp > 2) {
      return 'assets/images/cold.jpeg';
    } else if (condition <= 804 && temp >= 8 && temp < 16) {
      return 'assets/images/8_15_cloud.jpg';
    } else if (condition <= 804 && temp >= 16 && temp < 20) {
      return 'assets/images/16_20_cloud.jpeg';
    } else if (condition <= 804 && temp >= 20) {
      return 'assets/images/21_cloud.jpg';
    } else {
      return 'assets/images/scale_1200.jpg';
    }
  }
}
