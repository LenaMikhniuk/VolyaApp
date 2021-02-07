import 'package:volyaApp/services/location.dart';
import 'package:volyaApp/services/networkRequest.dart';

const apiKey = 'f14ab6a28d6abe47bd8189cb3542c3a9';
const openWeatherMapUrl = 'http://api.openweathermap.org/data/2.5/weather';

class Weather {
  Future<dynamic> getCityWeather(String cityName) async {
    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = netWorkRequest.getData();
    return weatherData;
  }

  Future<dynamic> getCurrentLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetWorkRequest netWorkRequest = NetWorkRequest(
        '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await netWorkRequest.getData();
    return weatherData;
  }

  String getWeatherImage(int condition, int temp) {
    if (condition < 300) {
      return '';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800 && temp <= 7) {
      return 'assets/images/winter.jpg';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  //   return '🌩';
  //   } else if (condition < 400) {
  //     return '🌧';
  //   } else if (condition < 600) {
  //     return '☔️';
  //   } else if (condition < 700) {
  //     return '☃️';
  //   } else if (condition < 800) {
  //     return '🌫';
  //   } else if (condition == 800) {
  //     return '☀️';
  //   } else if (condition <= 804) {
  //     return '☁️';
  //   } else {
  //     return '🤷‍';
  //   }
  // }
}
