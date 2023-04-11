import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:tv_app/constants/strings_constants.dart';
import '../../constants/visual_constants.dart';
import '../../models/episode_detail_model.dart';
import '../commons/network_image_widget.dart';

class EpisodePageWidget extends StatelessWidget {
  const EpisodePageWidget({super.key, required this.episode});
  final EpisodeDetail episode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width * 0.94,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        episode.name,
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
                            episode.season.toString(),
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
                            episode.number.toString(),
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
                        image: episode.image,
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 4),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Html(
                                  data: episode.summary,
                                  style: {
                                    "p": Style(
                                      textAlign: TextAlign.center,
                                      fontSize: FontSize(
                                        VisualConstants.isWeb(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01
                                            : VisualConstants.isTablet(context)
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
