// import 'package:intl/intl.dart';
// import 'package:volyaApp/models/temperature_model.dart';
// import 'package:volyaApp/models/weather_model.dart';

// class ForecastItem {
//   final int dt;
//   final TemperatureModel main;
//   final WeatherModel weather;
//   //final CityModel cityModel;

//   ForecastItem({
//     this.dt,
//     this.main,
//     this.weather,
//     //this.cityModel
//   });

//   ForecastItem.fromJson(Map<String, dynamic> json)
//       : dt = json['dt'],
//         main = TemperatureModel.fromJson(json['main']),
//         weather = WeatherModel.fromJson(json['weather'][0]);

//   /// return weekday with formate 'mon'
//   String get humanDataByDay {
//     return DateFormat.E()
//         .format(DateTime.fromMillisecondsSinceEpoch(dt * 1000, isUtc: true));
//   }
// }
