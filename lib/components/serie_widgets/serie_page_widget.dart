import 'package:flutter/material.dart';
import 'package:tv_app/components/serie_widgets/serie_detail_widget.dart';
import '../../models/serie_model.dart';
import 'list_widget.dart';

class SeriePageWidget extends StatelessWidget {
  const SeriePageWidget({super.key, required this.serie});
  final Serie serie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SerieDetailWidget(
          serie: serie,
        ),
        Padding(padding: EdgeInsets.only(bottom: 2)),
        EpisodeListViewHome(
          serie: serie,
        ),
      ],
    );
  }
}
