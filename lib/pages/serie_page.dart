import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:tv_app/components/serie_widgets/serie_page_widget.dart';
import 'package:tv_app/constants/strings_constants.dart';
import 'package:tv_app/states/serie_state.dart';

class SeriePage extends GetView<SeriePageState> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text(StringConstants.InitialPageTitle),
          ),
          body: controller.pageStatus.value == SeriePageStatus.loading
              ? Center(child: CircularProgressIndicator())
              : SeriePageWidget(
                  serie: controller.serie.value,
                ),
        ),
      ),
    );
  }
}
