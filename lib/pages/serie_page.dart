import 'package:flutter/material.dart';
import 'package:tv_app/states/serie_state.dart';

import '../components/list_widget.dart';
import '../components/serie_detail_widget.dart';

class SeriePage extends StatefulWidget {
  const SeriePage({super.key});

  @override
  State<SeriePage> createState() => _SeriePageState();
}

class _SeriePageState extends State<SeriePage> {
  SeriePageState state = SeriePageState();

  Future<void> getInfo() async {
    await state.reachSerieInfo(id: "6771");
    //TODO receber por parametro
    setState(() {});
  }

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: state.getSeriePageStatus() == SeriePageStatus.loading
          ? const CircularProgressIndicator()
          : Column(
              children: [
                SerieDetailWidget(
                  serie: state.getSerieInfo(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2)),
                EpisodeListViewHome(
                  episodesList: state.getSerieInfo().episodeList,
                ),
              ],
            ),
    );
  }
}
