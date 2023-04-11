import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/episode_widgets/episode_page_widget.dart';
import '../states/episode_state.dart';

class EpisodePage extends GetView<EpisodePageState> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text(controller.serieName.value),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              controller.pageStatus.value == EpisodePageStatus.loading
                  ? Center(child: CircularProgressIndicator())
                  : Flexible(
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
