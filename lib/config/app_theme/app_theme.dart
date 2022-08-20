

import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_colors.dart';
import 'package:quotes/core/utils/app_strings.dart';

ThemeData appTheme ()
{
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    fontFamily: AppString.fontFamily,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w600
      ),
      centerTitle: true,
      elevation: 0.0,


    ),
    scaffoldBackgroundColor: Colors.white,




    textTheme: const TextTheme(
      button: TextStyle(
        color: Colors.black,
        fontSize: 14,
         backgroundColor: Colors.white,

      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,



      ),
    )
  );
}