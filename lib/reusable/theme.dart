import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/reusable/all_constant.dart';

class CustomizedTheme {
  static final ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(
          color: Color(0xFF090C22),
          titleTextStyle: TextStyle(
            //color: Color(0xFFEFFFFC),
            fontSize: 18,
          )),
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 80.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFFEFFFFC),
        ),
        headline2: TextStyle(
          fontSize: 45.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFFEFFFFC),
        ),
        headline3: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFF228B22),
        ),
        button: TextStyle(
          fontSize: 30.0,
          color: Color(0xFFEFFFFC),
          letterSpacing: 5,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF8D8E98),
        ),
      ),
      sliderTheme: SliderThemeData(
          activeTrackColor: sliderActiveColor,
          inactiveTrackColor: sliderInactiveColor,
          thumbColor: sliderThemeThumbColor,
          overlayColor: sliderThemeOverlayColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
      iconTheme: IconThemeData(color: Color(0xFFEFFFFC), size: 60.0),
      scaffoldBackgroundColor: Color(0xFF090C22));

  CustomizedTheme._();
}
