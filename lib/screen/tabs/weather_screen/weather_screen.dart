import 'package:flutter/material.dart';
import 'package:volyaApp/models/forecast_by_city_model.dart';

import 'package:volyaApp/models/weather_today.dart';

import 'package:volyaApp/screen/city_screen.dart';
import 'package:volyaApp/screen/tabs/weather_screen/widgets/ImageFromWeatherTodayModel.dart';
import 'package:volyaApp/screen/tabs/weather_screen/widgets/forecast_widget.dart';
import 'package:volyaApp/services/weather_service.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/weather_utils.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // int temperature;
  // String weatherIcon;
  String weatherImageName;
  // String cityName;

  WeatherTodayModel weatherTodayModel;
  ForecastByCity forecastThreeDays;

  @override
  void initState() {
    super.initState();
    initialWeater();
    initialForecast();
  }

  void initialWeater() async {
    weatherTodayModel = await WeatherService.getCurrentLocationWeather();
    setState(() {});
    // updateUI(result);
  }

  void initialForecast() async {
    final resultForecast = await WeatherService.getCurrentLocationForecast();
    updateForecastWidget(resultForecast);
  }

  void updateUI(WeatherTodayModel weatherData) {
    print(weatherTodayModel);
    setState(() {
      weatherTodayModel = weatherData;
      if (weatherData == null) {
        Image.asset('assets/images/scale_1200.jpg');
        return;
      }
    });
  }

  void updateForecastWidget(ForecastByCity forecastData) {
    setState(() {
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
          ImageFromWeatherTodayModel(
            weatherImage: WeatherUtils.getWeatherImage(
                weatherTodayModel?.weather?.first?.id,
                weatherTodayModel?.main?.temp),
            weatherToday: weatherTodayModel,
          ),

          //  Image.asset(
          //     weatherImageName,
          //     fit: BoxFit.cover,
          //     width: double.infinity,
          //     height: double.infinity,
          //   ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildHeader(context),

              // temperature
              textContainer(
                '${weatherTodayModel?.main?.temp?.toInt() ?? '...'}  °C' +
                    '  ${WeatherUtils.getWeatherIcon(weatherTodayModel?.weather?.first?.id) ?? ''}',
                FontsStyles.weatherData,
              ),
              Expanded(
                  child: ForcastWidget(forecastThreeDays: forecastThreeDays)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
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
          Expanded(
              child: textContainer(
                  '${weatherTodayModel?.name ?? '...'}', FontsStyles.cityName)),
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
                ForecastByCity forecastByCity =
                    await WeatherService.getCityForecast(typedName);
                updateForecastWidget(forecastByCity);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget textContainer(String text, TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: AppColors.containerWeatherScreenColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: style,
                    ),
                  ),
                ],
              )),
        ),
      ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        icon: Icon(
          iconData,
          size: 40,
          color: AppColors.iconButtonWeatherColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
