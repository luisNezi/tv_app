import 'package:flutter/material.dart';
import 'package:tv_app/constants/episode_constants.dart';
import 'package:tv_app/constants/visual_constants.dart';
import 'package:tv_app/models/episode_simple_model.dart';

import '../../constants/arguments_constants.dart';
import '../../constants/strings_constants.dart';
import '../commons/network_image_widget.dart';

class SerieListEpisodeWidget extends StatefulWidget {
  const SerieListEpisodeWidget({
    super.key,
    required this.episode,
  });
  final EpisodeSimple episode;
  @override
  State<SerieListEpisodeWidget> createState() => _SerieListEpisodeWidgetState();
}

class _SerieListEpisodeWidgetState extends State<SerieListEpisodeWidget> {
  _SerieListEpisodeWidgetState();

  @override
  Widget build(BuildContext context) {
    double fontSize = VisualConstants.isWeb(context)
        ? MediaQuery.of(context).size.width * 0.01
        : VisualConstants.isTablet(context)
            ? MediaQuery.of(context).size.width * 0.02
            : MediaQuery.of(context).size.width * 0.03;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        EpisodeConstants.routeName,
        arguments: EpisodeRouteArguments(
          widget.episode.id,
          widget.episode.name,
        ),
      ),
      child: Card(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      StringConstants.TitleLabel,
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Text(
                      widget.episode.name,
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      StringConstants.SeasonLabel,
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Text(
                      widget.episode.season.toString(),
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text(
                      StringConstants.EpisodeLabel,
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Text(
                      widget.episode.number.toString(),
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ],
                ),
              ],
            ),
            NetWorkImage(
              image: widget.episode.image,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      )),
    );
  }
}
