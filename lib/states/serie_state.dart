import 'dart:async';

import 'package:get/get.dart';
import '../models/serie_model.dart';
import '../servs/serie_serv.dart';

enum SeriePageStatus {
  idle,
  loading,
  error,
}

class SeriePageState extends GetxController {
  SeriePageState({required this.serieId});
  final String serieId;
  final pageStatus = SeriePageStatus.idle.obs;
  final serie = Serie.initial().obs;
  @override
  void onInit() {
    reachSerieInfo(id: serieId);
    super.onInit();
  }

  Future<void> reachSerieInfo({required String id}) async {
    updatePageStatus(SeriePageStatus.loading);
    update();
    try {
      Serie _temp = await SerieServ.reachSerieInfoServ(id: id);
      _temp.episodeList = await SerieServ.reachSerieEpisodes(id: id);
      updateSerie(_temp);
      updatePageStatus(SeriePageStatus.idle);
      update();
    } catch (e) {
      updatePageStatus(SeriePageStatus.error);
      print(e);
    }
    update();
    return;
  }

  updatePageStatus(SeriePageStatus newValue) {
    pageStatus(newValue);
  }

  updateSerie(Serie newValue) {
    serie(newValue);
  }
}
