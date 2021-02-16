import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color appBarMainColor = Color(0xff9fa8da);
  static const Color appBarMainTextCoor = Color(0xfffff2fe);
  static const Color bodyMainColor = Color(0xffe6b5f5);
  static const Color borderColor = Color(0xfff032ba);
  static const Color bottomNavigationBarColor = Color(0xff9fa8da);
  static const Color unselectedItemColor = Color(0xfffff2fe);
  static const Color selectedItemColor = Color(0xfff032ba);
  static const Color appBarFairytalesAudioPlayerScreen = Color(0xffE9C3F5);
  static const Color appBarTextColorFairytaleScreen = Color(0xff6600ff);
  static const Color buttonColor = Color(0xffe6b5f5);
  static const Color iconButtonColor = Color(0xff6600ff);
  static const Color sliderActiveColor = Color(0xff6600ff);
  static const Color sliderInActiveColor = Color(0xffB878F6);
  static const Color audioplayerScreenMainColor = Color(0xffFAEBFF);
  static const Color appBarShadowColor = Color(0xff2B244F);
  static const Color weatherDataTextColor = Color(0xffFAEBFF);
  static const Color iconButtonWeatherColor = Color(0xff6600ff);
  static const Color textFieldWeatherCity = Color(0xffB878F6);
  static const Color hintColor = Color(0xff2B244F);
  static const Color weatherCityFlatButtonTextColor = Color(0xffE9C3F5);
  static const Color weatherCityFlatButtonColor = Color(0xff2B244F);
  static const Color cityName = Color(0xffFAEBFF);
  static const Color containerWeatherScreenColor = Color(0xff6600ff);
}

class FontsStyles {
  static TextStyle appBar = GoogleFonts.overpass(
    color: AppColors.appBarMainTextCoor,
    fontSize: 45,
  );
  static TextStyle appBarFairytalesAudioPlayerScreen = GoogleFonts.montserrat(
    color: AppColors.appBarTextColorFairytaleScreen,
    fontSize: 35,
  );

  static TextStyle weatherData = GoogleFonts.montserrat(
    color: AppColors.weatherDataTextColor,
    fontSize: 50,
  );

  static TextStyle cityName = GoogleFonts.montserrat(
    color: AppColors.cityName,
    fontSize: 35,
  );

  static TextStyle forecastThreeDays = GoogleFonts.montserrat(
    color: AppColors.weatherDataTextColor,
    fontSize: 20,
  );
}

class ButtonBoxDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColors.buttonColor,
  );
}
