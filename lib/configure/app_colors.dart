import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primaryColor           = Color(0xFF03813A);
  static const secondaryColor         = Color(0xFF03221d);
  static const backgroundColor        = Color(0xFF242246);
  static const blueColor              = Colors.blueAccent;
  static const primaryFontColor       = Colors.white;
  static const secondaryTextColor     = Colors.black;
  static const blackColor             = Colors.black;
  static const purple                 = Colors.purple;

}

class AppStyle {
  static final titleText = GoogleFonts.lobsterTwo(textStyle: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.primaryFontColor));

  static const title1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: AppColors.secondaryTextColor);
  static const title2 = TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.primaryFontColor);
  static const title3 = TextStyle(fontSize: 18, color: AppColors.primaryFontColor);
  static const title4 = TextStyle(fontSize: 14, color: AppColors.primaryFontColor);
}

class AppSize {
  static const borderRadiusSize = 8.00;
}
