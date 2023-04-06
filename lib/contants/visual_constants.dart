import 'package:flutter/material.dart';

class VisualConstants {
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
                      : MediaQuery.of(context).size.width * 0.035)
              : 20,
        ),
      ),
      cardColor: Colors.white,
    );
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 730;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1190 &&
      MediaQuery.of(context).size.width >= 730;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1190;
}
