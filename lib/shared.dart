import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color appBarMainColor = Color(0xff9fa8da);
  static const Color appBarMainTextCoor = Color(0xfffac5ee);
  static const Color bodyMainColor = Color(0xffe6b5f5);
  static const Color borderColor = Color(0xfff032ba);
}

class FontsStyles {
  static TextStyle appBar = GoogleFonts.overpass(
    color: AppColors.appBarMainTextCoor,
    fontSize: 45,
  );
}
