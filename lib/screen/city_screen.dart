import 'package:flutter/material.dart';
import 'package:volyaApp/shared.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/weather.jpeg'),
              fit: BoxFit.cover),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: AppColors.iconButtonWeatherColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onSubmitted: (value) {
                    Navigator.pop(context, cityName);
                  },
                  autofocus: true,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  style: TextStyle(color: AppColors.hintColor, fontSize: 25),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.textFieldWeatherCity.withOpacity(0.7),
                    icon: Icon(
                      Icons.place,
                      color: AppColors.iconButtonWeatherColor,
                    ),
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
              ),
              FlatButton(
                color: AppColors.weatherCityFlatButtonColor.withOpacity(0.9),
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: Text(
                  'Get Weather',
                  style: TextStyle(
                      color: AppColors.weatherCityFlatButtonTextColor,
                      fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
