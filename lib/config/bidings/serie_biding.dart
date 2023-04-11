import 'package:get/get.dart';
import '../../constants/strings_constants.dart';
import '../../states/serie_state.dart';

class SerieBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeriePageState>(
      () => SeriePageState(serieId: StringConstants.serieId),
    );
  }
}
