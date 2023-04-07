import 'package:flutter/material.dart';
import 'package:tv_app/constants/episode_constants.dart';
import 'package:tv_app/constants/series_constants.dart';
import 'package:tv_app/constants/strings_constants.dart';
import 'package:tv_app/pages/episode_page.dart';
import 'package:tv_app/pages/serie_page.dart';

import 'constants/visual_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstants.InitialPageTitle,
      routes: {
        //Passing Series id hardcoded for now, change it in future implementations
        SeriesConstants.routeName: (context) => SeriePage(
              serieId: StringConstants.serieId,
            ),
        EpisodeConstants.routeName: (context) => EpisodePage(),
      },
      theme: VisualConstants.mainTheme(),
    );
  }
}
