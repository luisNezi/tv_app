import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/serie_model.dart';
import '../servs/serie_serv.dart';

enum SeriePageStatus {
  idle,
  loading,
  error,
}

class SeriePageState extends GetxController {
  SeriePageStatus _pageStatus = SeriePageStatus.idle;
  Serie _serie = Serie.initial();

  Future<void> reachSerieInfo({required String id}) async {
    _pageStatus = SeriePageStatus.loading;
    update();
    try {
      _serie = await SerieServ.reachSerieInfoServ(id: id);
      _serie.episodeList = await SerieServ.reachSerieEpisodes(id: id);
      _pageStatus = SeriePageStatus.idle;
      update();
    } catch (e) {
      _pageStatus = SeriePageStatus.error;
      print(e);
    }
    update();
    return;
  }

  SeriePageStatus getSeriePageStatus() {
    return _pageStatus;
  }

  Serie getSerieInfo() {
    return _serie;
  }
}
