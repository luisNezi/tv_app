import 'dart:async';

import 'package:tv_app/models/episode_detail_model.dart';
import 'package:tv_app/servs/episode_serv.dart';

enum EpisodePageStatus {
  idle,
  loading,
  error,
}

class EpisodePageState {
  static final EpisodePageState _instance = EpisodePageState._internal();
  EpisodePageStatus _pageStatus = EpisodePageStatus.idle;
  EpisodeDetail _detail = EpisodeDetail.initial();

  factory EpisodePageState() {
    return _instance;
  }
  EpisodePageState._internal() {
    _pageStatus = EpisodePageStatus.idle;
  }
  Future<void> reachEpisodeInfo({required String id}) async {
    _pageStatus = EpisodePageStatus.loading;
    try {
      _detail = await EpisodeServ.reachEpisodeInfoServ(id: id);
      _pageStatus = EpisodePageStatus.idle;
    } catch (e) {
      _pageStatus = EpisodePageStatus.error;
      print(e);
    }
    return;
  }

  EpisodePageStatus getEpisodePageStatus() {
    return _pageStatus;
  }

  EpisodeDetail getEpisodeInfo() {
    return _detail;
  }
}
