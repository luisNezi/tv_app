import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/states/episode_state.dart';

void main() {
  test(
    'episode id should be the same as passed',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "1");
      expect(seriePageState.getEpisodeInfo().id, "1");
    },
  );
}
