import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volyaApp/screen/city_screen.dart';
import 'package:volyaApp/services/weather.dart';
import 'package:volyaApp/shared.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Weather weather = Weather();

  int temperature;
  String weatherIcon;
  String cityName;
  String weatherMessage;

  @override
  void initState() {
    super.initState();
    initialWeater();
  }

  void initialWeater() async {
    final result = await weather.getCurrentLocationWeather();
    updateUI(result);
  }

  void updateUI(dynamic weatherData) {
    print(weatherData);
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }
      num temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      //var condition = weatherData['weather'][0]['id'];

      cityName = weatherData['name'];
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/weatherSnow.jpg',
              ),
              fit: BoxFit.cover),
        ),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LocationButton(
                      iconData: Icons.near_me,
                      onPressed: () async {
                        var weatherData =
                            await weather.getCurrentLocationWeather();
                        updateUI(weatherData);
                      },
                    ),
                    LocationButton(
                      iconData: Icons.location_city,
                      onPressed: () async {
                        var typedName = await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CityScreen(),
                          ),
                        );
                        if (typedName != null) {
                          var weatherData =
                              await weather.getCityWeather(typedName);
                          updateUI(weatherData);
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    weatherColumn(),
                    Column(
                      children: [
                        textContainer(
                            '${cityName ?? '...'}', FontsStyles.cityName),
                        SizedBox(
                          height: 10,
                        ),
                        textContainer(
                          '${temperature ?? '...'} °C',
                          FontsStyles.weatherData,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Center(
              //   child: Text(
              //     'It\'s time to sladge!',
              //     style: TextStyle(fontSize: 30),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Container textContainer(String text, TextStyle style) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerWeatherScreenColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: style,
          ),
        ],
      ),
    );
  }

  Column weatherColumn() {
    return Column(
      children: [
        Text('Mon'),
        weatherBox(Icons.beach_access),
        Text('Tue'),
        weatherBox(Icons.beach_access),
        Text('Wed'),
        weatherBox(Icons.beach_access),
      ],
    );
  }

  Container weatherBox(IconData icon) {
    return Container(
      color: AppColors.containerWeatherScreenColor.withOpacity(0.6),
      width: 60,
      height: 60,
      child: Icon(
        icon,
        size: 50,
        color: Colors.white,
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
