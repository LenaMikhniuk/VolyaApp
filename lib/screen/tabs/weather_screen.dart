import 'package:flutter/material.dart';

import 'package:volyaApp/models/forecast_model.dart';
import 'package:volyaApp/models/weather_by_geo_model.dart';
import 'package:volyaApp/models/weather_today.dart';

import 'package:volyaApp/screen/city_screen.dart';
import 'package:volyaApp/services/weather_service.dart';
import 'package:volyaApp/shared.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int temperature;
  String weatherIcon;
  String weatherImageName;
  String cityName;
  String weatherMessage;
  ForecastModel forecastThreeDays;

  @override
  void initState() {
    super.initState();
    initialWeater();
    // initialForecast();
  }

  void initialWeater() async {
    final result = await WeatherService.getCurrentLocationWeather();
    updateUI(result);
  }

  void initialForecast() async {
    final resultForecast = await WeatherService.getCurrentLocationForecast();
    updateForecastWidget(resultForecast);
  }

  void updateUI(var weatherData) {
    print(weatherData);
    setState(() {
      if (weatherData == null) {
        Image.asset('assets/images/scale_1200.jpg');
        return;
      }
      num temp = weatherData.main.temp;
      temperature = temp.toInt();

      var condition = weatherData.weather[0].id;
      weatherImageName = WeatherService.getWeatherImage(condition, temp);
      cityName = weatherData.name;
    });
  }

  void updateForecastWidget(ForecastModel forecastData) {
    setState(() {
      print(temperature);
      forecastThreeDays = forecastData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Weather',
          style: FontsStyles.appBar,
        ),
        backgroundColor: AppColors.appBarMainColor,
        shadowColor: AppColors.appBarShadowColor,
      ),
      body: Stack(
        children: [
          weatherImageName == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Image.asset(
                  weatherImageName,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildHeader(context),

              // temperature
              textContainer(
                '${temperature ?? '...'} °C',
                FontsStyles.weatherData,
              ),
              Expanded(child: weatherColumn()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LocationButton(
            iconData: Icons.near_me,
            onPressed: () async {
              var weatherData =
                  await WeatherService.getCurrentLocationWeather();
              updateUI(weatherData);
            },
          ),
          textContainer('${cityName ?? '...'}', FontsStyles.cityName),
          LocationButton(
            iconData: Icons.place,
            onPressed: () async {
              var typedName = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CityScreen(),
                ),
              );
              if (typedName != null) {
                WeatherTodayModel weatherData =
                    await WeatherService.getWeatherByCity(typedName);
                updateUI(weatherData);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget textContainer(String text, TextStyle style) {
    double cwidth = MediaQuery.of(context).size.width * 0.5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: cwidth,
            decoration: BoxDecoration(
              color: AppColors.containerWeatherScreenColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(3),
            ),
            //child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: style,
            ) // ),
            ),
      ],
    );
  }

  Widget weatherColumn() {
    return SingleChildScrollView(
      child: Column(
          children: forecastThreeDays == null
              ? [Container()]
              : forecastThreeDays.list
                  .map((e) => Column(
                        children: [
                          Text(e.humanDataByDay),
                          Text(
                            e.main.tempToInt,
                          ),
                        ],
                      ))
                  .skip(1)
                  .toList()),
    );
  }

  Container weatherBox(String weatherIcon) {
    if (weatherIcon == null) {
      return Container();
    }
    return Container(
      color: AppColors.containerWeatherScreenColor.withOpacity(0.6),
      width: 60,
      height: 60,
      child: Column(
        children: [
          Text('${temperature ?? '...'} °C' + weatherIcon),
        ],
      ),
    );
  }
}

class LocationButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  const LocationButton({
    this.iconData,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        iconData,
        size: 40,
        color: AppColors.iconButtonWeatherColor,
      ),
      onPressed: onPressed,
    );
  }
}
