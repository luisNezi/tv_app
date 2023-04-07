import 'package:flutter/material.dart';

import '../../models/serie_model.dart';
import 'serie_list_episode_widget.dart';

class EpisodeListViewHome extends StatelessWidget {
  const EpisodeListViewHome({super.key, required this.serie});
  final Serie serie;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        reverse: false,
        shrinkWrap: true,
        itemCount: serie.episodeList.length,
        itemBuilder: (BuildContext context, int index) {
          return SerieListEpisodeWidget(
            episode: serie.episodeList[index],
            serie: serie,
          );
        },
      ),
    );
  }
}
