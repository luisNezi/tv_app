import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../constants/series_constants.dart';
import '../models/episode_simple_model.dart';
import '../models/serie_model.dart';

class SerieServ {
  static Future<Serie> reachSerieInfoServ({required String id}) async {
    Serie _serie = Serie.initial();
    try {
      Uri url = Uri.parse("${SeriesConstants.getSeriesInfoUrl}$id");
      Response response = await http.get(url);
      final parsed = jsonDecode(response.body);
      _serie = Serie.fromJson(parsed);
    } catch (e) {
      print(e);
    }
    return _serie;
  }

  static Future<List<EpisodeSimple>> reachSerieEpisodes(
      {required String id}) async {
    List<EpisodeSimple> _serieEpisodes = [];
    try {
      Uri url = Uri.parse(SeriesConstants.getSeriesEpisode(id));
      Response response = await http.get(url);
      final parsed = jsonDecode(response.body) as List;
      parsed.forEach((element) {
        _serieEpisodes.add(EpisodeSimple.fromJson(element));
      });
    } catch (e) {
      print(e);
    }
    return _serieEpisodes;
  }
}
