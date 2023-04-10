import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:tv_app/constants/strings_constants.dart';
import '../../constants/visual_constants.dart';
import '../../states/episode_state.dart';
import '../commons/network_image_widget.dart';

class EpisodePageWidget extends StatefulWidget {
  const EpisodePageWidget({super.key, required this.id});
  final String id;
  @override
  State<EpisodePageWidget> createState() => _EpisodePageWidgetState();
}

class _EpisodePageWidgetState extends State<EpisodePageWidget> {
  _EpisodePageWidgetState();

  EpisodePageState state = Get.put(EpisodePageState());

  Future<void> getInfo() async {
    await state.reachEpisodeInfo(id: widget.id);
    setState(() {});
  }

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GetBuilder<EpisodePageState>(
              builder: (_) {
                return state.getEpisodePageStatus() == EpisodePageStatus.loading
                    ? CircularProgressIndicator()
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.getEpisodeInfo().name,
                              style: VisualConstants.mainTheme(
                                context: context,
                              ).primaryTextTheme.titleLarge,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  StringConstants.SeasonLabel,
                                  style: VisualConstants.mainTheme(
                                    context: context,
                                  ).primaryTextTheme.titleMedium,
                                ),
                                Text(
                                  state.getEpisodeInfo().season.toString(),
                                  style: VisualConstants.mainTheme(
                                    context: context,
                                  ).primaryTextTheme.titleMedium,
                                ),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(
                                  StringConstants.EpisodeLabel,
                                  style: VisualConstants.mainTheme(
                                    context: context,
                                  ).primaryTextTheme.titleMedium,
                                ),
                                Text(
                                  state.getEpisodeInfo().number.toString(),
                                  style: VisualConstants.mainTheme(
                                    context: context,
                                  ).primaryTextTheme.titleMedium,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                            ),
                            NetWorkImage(
                              image: state.getEpisodeInfo().image,
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.height * 0.3,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Html(
                                        data: state.getEpisodeInfo().summary,
                                        style: {
                                          "p": Style(
                                            fontSize: FontSize(
                                              VisualConstants.isWeb(context)
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.01
                                                  : VisualConstants.isTablet(
                                                          context)
                                                      ? MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.02
                                                      : MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.04,
                                            ),
                                          ),
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
