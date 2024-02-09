import 'package:flutter/material.dart';

class ThemePref {
  static const String lightTheme = "LightTheme";
  static const String darkTheme = "DarkTheme";
  static const String deepOrangeThemeLight = "DeepOrangeThemeLight";
  static const String deepPurpleThemeLight = "DeepPurpleThemeLight";

  static List<String> themePrefList = [
    "LightTheme",
    "DarkTheme",
    "DeepOrangeThemeLight",
    "DeepPurpleThemeLight"
  ];
}

final appThemeData = {
  ThemePref.lightTheme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue
    ),
      textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.blue)
      )
  ),
  ThemePref.darkTheme: ThemeData(brightness: Brightness.dark),
  ThemePref.deepOrangeThemeLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange,
    primarySwatch: Colors.deepOrange,
    appBarTheme: AppBarTheme(
      color: Colors.deepOrange,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.deepOrange)
    )
  ),
  ThemePref.deepPurpleThemeLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.deepPurple,
    ),
      textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.deepPurple)
      )
  ),
};
