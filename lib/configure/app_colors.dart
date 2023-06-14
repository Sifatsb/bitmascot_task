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

  static const loremIpsumText = ''' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ''';

}

class AppSize {
  static const borderRadiusSize = 8.00;
}
