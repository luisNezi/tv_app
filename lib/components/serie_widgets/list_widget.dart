import 'package:flutter/material.dart';
import 'package:tv_app/models/episode_simple_model.dart';

import 'serie_list_episode_widget.dart';

class EpisodeListViewHome extends StatelessWidget {
  const EpisodeListViewHome({super.key, required this.episodesList});
  final List<EpisodeSimple> episodesList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        reverse: false,
        shrinkWrap: true,
        itemCount: episodesList.length,
        itemBuilder: (BuildContext context, int index) {
          return SerieListEpisodeWidget(
            episode: episodesList[index],
          );
        },
      ),
    );
  }
}
