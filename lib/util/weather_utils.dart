class WeatherUtils {
  static String tempWithIcon(num temp, num condition) {
    return getTempHumanFromNum(temp) + ' ' + getWeatherIcon(condition);
  }

  static String getTempHumanFromNum(num temp) {
    if (temp == null) {
      return '...';
    }
    return '${(temp ?? 0) > 0.5 ? '+' : ''}'
        ' ${temp?.toStringAsFixed(0) ?? ''}°C';
  }

  static String getWeatherIcon(num condition) {
    if (condition == null) {
      return '';
    }
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
    if (condition == null) {
      return 'assets/images/white.jpg';
    }
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
      return 'assets/images/cloud.jpg';
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
