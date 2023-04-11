import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:tv_app/constants/series_constants.dart';
import 'package:tv_app/constants/strings_constants.dart';

import 'config/get_pages.dart';
import 'constants/visual_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConstants.InitialPageTitle,
      defaultTransition: Transition.fade,
      initialRoute: SeriesConstants.routeName,
      getPages: getPages,
      theme: VisualConstants.mainTheme(),
    );
  }
}
