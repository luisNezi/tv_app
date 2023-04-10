import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/constants/strings_constants.dart';
import 'package:tv_app/states/serie_state.dart';

void main() {
  test(
    'serie id should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.id, StringConstants.serieId);
    },
  );
  test(
    'serie episode length should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.episodeList.first.name,
          "Escape from Monster Island");
    },
  );
  test(
    'serie fisrst episode name should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.episodeList.first.name,
          "Escape from Monster Island");
    },
  );
  test(
    'serie image should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.image,
          "https://static.tvmaze.com/uploads/images/medium_portrait/60/151357.jpg");
    },
  );
  test(
    'serie name should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.name, "The Powerpuff Girls");
    },
  );
  test(
    'serie summary should be the same as passed',
    () async {
      final seriePageState = SeriePageState(serieId: StringConstants.serieId);
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.serie.value.summary.replaceAll('"', "'"),
          "<p>The city of Townsville may be a beautiful, bustling metropolis, but don't be fooled! There's evil afoot! And only three things can keep the bad guys at bay: Blossom, Bubbles and Buttercup, three super-powered little girls, known to their fans (and villains everywhere) as <b>The Powerpuff Girls</b>. Juggling school, bedtimes, and beating up giant monsters may be daunting, but together the Powerpuff Girls are up to the task. Battling a who's who of evil, they show what it really means to 'fight like a girl.'</p>");
    },
  );
}
