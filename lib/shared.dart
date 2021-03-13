import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xff9fa8da);
  static const Color textColorLight = Color(0xfffff2fe);
  static const Color highlighterColor = Color(0xfff032ba);
  static const Color backgroundColor = Color(0xffe6b5f5);
  static const Color secondaryColor = Color(0xff6600ff);
  static const Color textColorDark = Color(0xff2B244F);
}

class FontsStyles {
  static TextStyle baseStyleDark = GoogleFonts.montserrat(
    color: AppColors.textColorDark,
    fontSize: 20,
  );

  static TextStyle baseStyleLight = GoogleFonts.raleway(
    color: AppColors.textColorLight,
    fontSize: 30,
  );
}

class ButtonBoxDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColors.backgroundColor,
  );
}
