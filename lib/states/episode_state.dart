import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tv_app/models/episode_detail_model.dart';
import 'package:tv_app/servs/episode_serv.dart';

enum EpisodePageStatus {
  idle,
  loading,
  error,
}

class EpisodePageState extends GetxController {
  EpisodePageStatus _pageStatus = EpisodePageStatus.idle;
  EpisodeDetail _detail = EpisodeDetail.initial();
  Future<void> reachEpisodeInfo({required String id}) async {
    _pageStatus = EpisodePageStatus.loading;
    try {
      _detail = await EpisodeServ.reachEpisodeInfoServ(id: id);
      _pageStatus = EpisodePageStatus.idle;
    } catch (e) {
      _pageStatus = EpisodePageStatus.error;
      print(e);
    }
    update();
    return;
  }

  EpisodePageStatus getEpisodePageStatus() {
    return _pageStatus;
  }

  EpisodeDetail getEpisodeInfo() {
    return _detail;
  }
}
