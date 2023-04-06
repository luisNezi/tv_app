import 'package:flutter/material.dart';
import 'package:tv_app/contants/visual_constants.dart';
import 'package:tv_app/models/episode_simple_model.dart';

import '../contants/arguments.dart';
import '../pages/episode_page.dart';
import 'network_image_widget.dart';

class EpisodeWidget extends StatefulWidget {
  const EpisodeWidget({
    super.key,
    required this.episode,
  });
  final EpisodeSimple episode;
  @override
  State<EpisodeWidget> createState() => _EpisodeWidgetState();
}

class _EpisodeWidgetState extends State<EpisodeWidget> {
  _EpisodeWidgetState();

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
        EpisodePage.routeName,
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
                      "Title: ",
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
                      //TODO substituir strings para utilizar os arquivos constants
                      "Season: ",
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Text(
                      widget.episode.season.toString(),
                      style: TextStyle(fontSize: fontSize),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text(
                      "Number: ",
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
