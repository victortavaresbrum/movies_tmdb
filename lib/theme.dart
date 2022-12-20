import 'package:desafio_api_cubos/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MovieTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: MovieColors.whiteColor,
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: MovieColors.orangeColor),
      elevation: 0,
      backgroundColor: MovieColors.whiteColor,
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: MovieColors.orangeColor,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color?>(
        MovieColors.greyColor.withOpacity(0.5),
      ),
      trackColor: MaterialStateProperty.all<Color?>(MovieColors.whiteColor),
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
      ),
      labelColor: MovieColors.orangeColor,
      indicatorSize: TabBarIndicatorSize.tab,
       indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0))
      ),
      unselectedLabelStyle: TextStyle(
        
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelColor: MovieColors.greyColor
      
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: MovieColors.darkColor,
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: MovieColors.orangeColor),
      elevation: 0,
      backgroundColor: MovieColors.darkColor,
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: MovieColors.orangeColor,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
      
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color?>(
        MovieColors.whiteColor.withOpacity(0.4),
      ),
      trackColor: MaterialStateProperty.all<Color?>(MovieColors.darkColor),
    ),

     tabBarTheme: const TabBarTheme(
      labelStyle:
      TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        
      ),

      labelColor: MovieColors.orangeColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0))
      ),
      unselectedLabelStyle: TextStyle(
        
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelColor: MovieColors.greyColor
    ),
  );
}
