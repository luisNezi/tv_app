import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/constants/strings_constants.dart';
import 'package:tv_app/states/serie_state.dart';

void main() {
  test(
    'episode id should be the same as passed',
    () async {
      final seriePageState = SeriePageState();
      await seriePageState.reachSerieInfo(id: StringConstants.serieId);
      expect(seriePageState.getSerieInfo().id, StringConstants.serieId);
    },
  );
}
