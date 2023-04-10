import 'package:get/get_navigation/src/routes/get_route.dart';

import '../constants/episode_constants.dart';
import '../constants/series_constants.dart';
import '../pages/episode_page.dart';
import '../pages/serie_page.dart';
import 'bidings/episode_biding.dart';
import 'bidings/serie_biding.dart';

final getPages = [
  GetPage(
    name: EpisodeConstants.routeName,
    page: () => EpisodePage(),
    binding: EpisodeBinding(),
  ),
  GetPage(
    name: SeriesConstants.routeName,
    page: () => SeriePage(),
    binding: SerieBinding(),
  ),
];
