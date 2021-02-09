import 'dart:convert';

class CityModel {
  // final int sunrise;
  // final int sunset;
  final double lat;
  final double lon;

  CityModel({this.lat, this.lon
      //this.sunrise, this.sunset,
      });

  CityModel.fromJson(Map<String, dynamic> json)
      // : sunrise = json['sunrise'],
      //   sunset = json['sunset'],
      : lat = json['lat'],
        lon = json['lon'];
}
