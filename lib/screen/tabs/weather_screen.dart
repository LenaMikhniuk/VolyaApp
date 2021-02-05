import 'package:flutter/material.dart';
import 'package:volyaApp/shared.dart';

class WeatherScreen extends StatelessWidget {
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
                    onPressed: () {},
                  ),
                  LocationButton(
                    iconData: Icons.location_city,
                    onPressed: () {},
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
                  weatherData(),
                  Text(
                    '-10 °C',
                    style: FontsStyles.weatherData,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'It\'s time to sladge!',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column weatherData() {
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
      // color: Colors.grey,
      width: 60,
      height: 60,
      child: Icon(
        icon,
        size: 50,
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
