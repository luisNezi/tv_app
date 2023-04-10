import 'dart:async';

import 'package:get/get.dart';
import 'package:tv_app/servs/episode_serv.dart';

import '../constants/arguments_constants.dart';
import '../models/episode_detail_model.dart';

enum EpisodePageStatus {
  idle,
  loading,
  error,
}

class EpisodePageState extends GetxController {
  final pageStatus = EpisodePageStatus.idle.obs;
  final detail = EpisodeDetail.initial().obs;
  final serieName = "".obs;
  EpisodeRouteArguments argumentData =
      Get.arguments ?? EpisodeRouteArguments("", "");

  @override
  void onInit() {
    reachEpisodeInfo(id: argumentData.episodeId);
    super.onInit();
  }

  Future<void> reachEpisodeInfo({required String id}) async {
    updatePageStatus(EpisodePageStatus.loading);
    try {
      updateDetail(await EpisodeServ.reachEpisodeInfoServ(id: id));
      updatePageStatus(EpisodePageStatus.idle);
    } catch (e) {
      updatePageStatus(EpisodePageStatus.error);
      print(e);
    }
    update();
    return;
  }

  updatePageStatus(EpisodePageStatus newValue) {
    pageStatus(newValue);
  }

  updateDetail(EpisodeDetail newValue) {
    detail(newValue);
  }

  updateSerieName(String newValue) {
    serieName(newValue);
  }
}
