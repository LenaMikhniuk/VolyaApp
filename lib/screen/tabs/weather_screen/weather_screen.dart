import 'package:auto_size_text/auto_size_text.dart';
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
  }

  void initialForecast() async {
    forecastThreeDays = await WeatherService.getCurrentLocationForecast();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // isLoading
          //     ? LoadingIndicator()
          //     :
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildHeader(context),
              textContainer(
                '${(weatherTodayModel?.main?.temp ?? 0) > 0 ? '+' : ''}${weatherTodayModel?.main?.temp?.toInt() ?? '...'}°C' +
                    '  ${WeatherUtils.getWeatherIcon(weatherTodayModel?.weather?.first?.id) ?? ''}',
                FontsStyles.weatherData,
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
            iconData: Icons.place,
            onPressed: () async {
              try {
                weatherTodayModel =
                    await WeatherService.getCurrentLocationWeather();
                setState(() {});
                forecastThreeDays =
                    await WeatherService.getCurrentLocationForecast();
                setState(() {});
              } catch (error) {}
            },
          ),
          Expanded(
              child: textContainer(
                  '${weatherTodayModel?.name ?? '...'}', FontsStyles.cityName)),
          LocationButton(
            iconData: Icons.search,
            onPressed: () async {
              var typedName = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CityScreen(),
                ),
              );
              setState(() {});
              if (typedName != null) {
                try {
                  weatherTodayModel =
                      await WeatherService.getWeatherByCity(typedName);
                } catch (error) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('An error occured'),
                        content: Text('Please enter a correct city name'),
                        actions: [
                          FlatButton(
                              onPressed: Navigator.of(context).pop,
                              child: Text(
                                'Ok',
                                style:
                                    TextStyle(color: AppColors.errorTextColor),
                              ))
                        ],
                      );
                    },
                  );
                }
                setState(() {});
                forecastThreeDays =
                    await WeatherService.getCityForecast(typedName);
                setState(() {});
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
                    child: AutoSizeText(
                      text,
                      textAlign: TextAlign.center,
                      style: style,
                      minFontSize: 18,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
