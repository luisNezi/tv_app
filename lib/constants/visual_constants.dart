import 'package:flutter/material.dart';

class VisualConstants {
  //Main theme of the app
  static ThemeData mainTheme({BuildContext? context}) {
    return ThemeData(
      primarySwatch: Colors.indigo,
      primaryTextTheme: TextTheme(
        titleLarge: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          fontSize: context != null
              ? (VisualConstants.isWeb(context)
                  ? MediaQuery.of(context).size.width * 0.015
                  : VisualConstants.isTablet(context)
                      ? MediaQuery.of(context).size.width * 0.025
                      : MediaQuery.of(context).size.width * 0.045)
              : 20,
        ),
        titleMedium: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          fontSize: context != null
              ? (VisualConstants.isWeb(context)
                  ? MediaQuery.of(context).size.width * 0.012
                  : VisualConstants.isTablet(context)
                      ? MediaQuery.of(context).size.width * 0.022
                      : MediaQuery.of(context).size.width * 0.04)
              : 18,
        ),
      ),
      cardColor: Colors.white,
    );
  }

  //A easy way to check if the screen is mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 730;

  //A easy way to check if the screen is tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1190 &&
      MediaQuery.of(context).size.width >= 730;

  //A easy way to check if the screen is web
  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1190;
}
