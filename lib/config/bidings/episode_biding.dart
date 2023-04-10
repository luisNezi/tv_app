import 'package:get/get.dart';

import '../../states/episode_state.dart';

class EpisodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EpisodePageState>(
      () => EpisodePageState(),
    );
  }
}
