import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../constants/episode_constants.dart';
import '../models/episode_detail_model.dart';

class EpisodeServ {
  static Future<EpisodeDetail> reachEpisodeInfoServ(
      {required String id}) async {
    EpisodeDetail _detail = EpisodeDetail.initial();
    try {
      Uri url = Uri.parse("${EpisodeConstants.getEpisodeInfoUrl}$id");
      Response response = await http.get(url);
      final parsed = jsonDecode(response.body);
      _detail = EpisodeDetail.fromJson(parsed);
    } catch (e) {
      print(e);
    }
    return _detail;
  }
}
