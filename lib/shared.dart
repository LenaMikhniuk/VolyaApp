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
  static const Color borderSideForecastThreeDaysColor = Color(0xff64626D);
  static const Color errorTextColor = Color(0xff6600ff);
  static const Color circularIndicatorColor = Color(0xff6600ff);
  static const Color hintSearchBarColor = Color(0xff6600ff);
  static const Color iconSearchBarColor = Color(0xff6600ff);
  static const Color bodyPhotoScreenColor = Color(0xffffe6e6);
  static const Color iconButtonPhotoScreenColor = Color(0xff6600ff);
  static const Color deleteTextColor = Color(0xff6600ff);
  static const Color loginScreenBackgroundColor = Color(0xff9fa8da);
  static const Color snackBarMessageColor = Color(0xffffe6e6);
  static const Color loginButtonTextColor = Color(0xff2B244F);
  static const Color logOutButtonTextColor = Color(0xff2B244F);
  static const Color loginButtonColor = Color(0xff78c1f5);
  static const Color loginInActiveButtonColor = Color(0xffcceaff);
}

class FontsStyles {
  static TextStyle appBar = GoogleFonts.overpass(
    color: AppColors.appBarMainTextCoor,
    fontSize: 40,
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
      fontSize: 25,
      fontWeight: FontWeight.w500);

  static TextStyle hintName = GoogleFonts.raleway(
    // color: AppColors.hintSearchBarColor,
    fontSize: 17,
  );

  static TextStyle selectedName = GoogleFonts.raleway(
    color: AppColors.hintSearchBarColor,
    fontSize: 23,
  );
  static TextStyle deleteAlertDialog = GoogleFonts.montserrat(
    color: AppColors.deleteTextColor,
    fontSize: 23,
  );
  static TextStyle pickAlertDialog = GoogleFonts.montserrat(
    color: AppColors.deleteTextColor,
    fontSize: 18,
  );
  static TextStyle snackBarMessage = GoogleFonts.montserrat(
    color: AppColors.snackBarMessageColor,
    fontSize: 18,
  );
  static TextStyle hintLogin = GoogleFonts.raleway(
    color: AppColors.hintSearchBarColor,
    fontSize: 17,
  );
  static TextStyle loginButton = GoogleFonts.montserrat(
    color: AppColors.loginButtonTextColor,
    fontSize: 20,
  );

  static TextStyle logOutButton = GoogleFonts.montserrat(
      color: AppColors.logOutButtonTextColor,
      fontSize: 25,
      fontWeight: FontWeight.w500);
}

class ButtonBoxDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColors.buttonColor,
  );
}
