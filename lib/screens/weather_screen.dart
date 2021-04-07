import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:volyaApp/models/weather_models/forecast_by_city_model.dart';
import 'package:volyaApp/models/weather_models/weather_today.dart';
import 'package:volyaApp/screens/auth/log_out.dart';
import 'package:volyaApp/widgets/weather_screen/forecast_widget.dart';

import 'package:volyaApp/screens/searchBarScreen.dart';
import 'package:volyaApp/widgets/weather_screen/imageFromWeatherTodayModel.dart';

import 'package:volyaApp/services/location.dart';
import 'package:volyaApp/services/weather_service.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/weather_utils.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherTodayModel weatherTodayModel;
  ForecastByCity forecastThreeDays;
  SearchBarScreen searchBarScreen;

  @override
  void initState() {
    super.initState();

    Location.determinePosition();
    initialWeater();
  }

  void initialWeater() async {
    weatherTodayModel = await WeatherService.getCurrentLocationWeather();
    forecastThreeDays = await WeatherService.getCurrentLocationForecast();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: LogOut(),
      body: Stack(
        children: [
          weatherTodayModel == null
              ? buildCircularProgressIndicator()
              : ImageFromWeatherTodayModel(
                  weatherImage: WeatherUtils.getWeatherImage(
                      weatherTodayModel?.weather?.first?.id,
                      weatherTodayModel?.main?.temp),
                  weatherToday: weatherTodayModel,
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
              ),
              _buildHeader(context),
              textContainer(
                WeatherUtils.tempWithIcon(weatherTodayModel?.main?.temp,
                    weatherTodayModel?.weather?.first?.id),
                FontsStyles.baseStyleDark,
              ),
              Expanded(
                child: ForcastWidget(
                  forecastThreeDays: forecastThreeDays,
                  iconName: WeatherUtils.getWeatherIcon(
                    forecastThreeDays?.list?.first?.weather?.first?.id,
                  ),
                ),
              ),
            ],
          ),
          SearchBarScreen(onCurrentLocation: () {
            initialWeater();
          }, onChosenCity: (String typedName) async {
            onChosenCity(typedName);
          })
        ],
      ),
    );
  }

  Center buildCircularProgressIndicator() {
    return Center(
        child: SizedBox(
      height: 90,
      width: 90,
      child: CircularProgressIndicator(
        strokeWidth: 5,
        valueColor: AlwaysStoppedAnimation<Color>(
            AppColors.secondaryColor.withOpacity(0.5)),
      ),
    ));
  }

  Future<void> onChosenCity(String typedName) async {
    try {
      weatherTodayModel = await WeatherService.getWeatherByCity(typedName);
      forecastThreeDays = await WeatherService.getCityForecast(typedName);
      setState(() {});
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('An error occured'),
            content: Text('Please enter a correct city name'),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: Text(
                  'Ok',
                  style: TextStyle(color: AppColors.textColorDark),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: textContainer('${weatherTodayModel?.name ?? '...'}',
                  FontsStyles.baseStyleDark)),
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
            //padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: AutoSizeText(
                    text,
                    textAlign: TextAlign.center,
                    style: FontsStyles.baseStyleLight,
                    minFontSize: 35,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
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
          color: AppColors.secondaryColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
