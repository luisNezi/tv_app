import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/states/episode_state.dart';

void main() {
  test(
    'episode id should be the same as passed',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.id, "657308");
    },
  );
  test(
    'episode id should be the same as passed',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.id, "657308");
    },
  );
  test(
    'episode image should be the same as the one in test',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.image,
          "https://static.tvmaze.com/uploads/images/medium_landscape/53/132617.jpg");
    },
  );
  test(
    'episode image should be the same as the one in test',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.name, "Escape from Monster Island");
    },
  );
  test(
    'episode number should be the same as the one in test',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.number, 1);
    },
  );
  test(
    'episode season should be the same as the one in test',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.season, 1);
    },
  );
  test(
    'episode summary should be the same as the one in test',
    () async {
      final seriePageState = EpisodePageState();
      await seriePageState.reachEpisodeInfo(id: "657308");
      expect(seriePageState.detail.value.summary,
          "<p>Bubbles wins two tickets to a concert and has to pick between Blossom and Buttercup to go with her. Meanwhile, the Mayor's plane goes down over Monster Island and it's up to the girls to rescue him.</p>");
    },
  );
}
