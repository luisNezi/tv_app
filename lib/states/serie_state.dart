import 'dart:async';

import '../models/serie_model.dart';
import '../servs/serie_serv.dart';

enum SeriePageStatus {
  idle,
  loading,
  error,
}

class SeriePageState {
  static final SeriePageState _instance = SeriePageState._internal();
  SeriePageStatus _pageStatus = SeriePageStatus.idle;
  Serie _serie = Serie.initial();

  factory SeriePageState() {
    return _instance;
  }
  SeriePageState._internal() {
    _pageStatus = SeriePageStatus.idle;
  }
  Future<void> reachSerieInfo({required String id}) async {
    _pageStatus = SeriePageStatus.loading;
    try {
      _serie = await SerieServ.reachSerieInfoServ(id: id);
      _serie.episodeList = await SerieServ.reachSerieEpisodes(id: id);
      _pageStatus = SeriePageStatus.idle;
    } catch (e) {
      _pageStatus = SeriePageStatus.error;
      print(e);
    }
    return;
  }

  SeriePageStatus getSeriePageStatus() {
    return _pageStatus;
  }

  Serie getSerieInfo() {
    return _serie;
  }
}
