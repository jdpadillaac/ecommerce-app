import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: AppColors.mainColor,
      textTheme: GoogleFonts.poppinsTextTheme()
          .apply(
            bodyColor: Colors.white,
          )
          .copyWith(
            headline6: TextStyle(
              fontSize: 20,
            ),
          ),
    ),
    accentColor: AppColors.accentColor,
    canvasColor: AppColors.mainColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(
          bodyColor: AppColors.secondColor,
        )
        .copyWith(
          bodyText1: TextStyle(color: AppColors.mainColor),
          bodyText2: TextStyle(color: AppColors.secondColor),
        ),
    iconTheme: IconThemeData(color: AppColors.secondColor),
  );
}

ThemeData darkTheme() {
  return ThemeData();
}
