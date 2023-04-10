import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/episode_widgets/episode_page_widget.dart';
import '../states/episode_state.dart';

class EpisodePage extends GetView<EpisodePageState> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(controller.serieName.value),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.pageStatus.value == EpisodePageStatus.loading
                  ? CircularProgressIndicator()
                  : Container(
                      child: EpisodePageWidget(
                        episode: controller.detail.value,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
