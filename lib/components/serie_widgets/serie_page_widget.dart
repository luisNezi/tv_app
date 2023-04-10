import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_app/components/serie_widgets/serie_detail_widget.dart';
import '../../states/serie_state.dart';
import 'list_widget.dart';

class SeriePageWidget extends StatefulWidget {
  const SeriePageWidget({super.key, required this.serieId});
  final String serieId;

  @override
  State<SeriePageWidget> createState() => _SeriePageWidgetState();
}

class _SeriePageWidgetState extends State<SeriePageWidget> {
  SeriePageState state = Get.put(SeriePageState());

  Future<void> getInfo() async {
    await state.reachSerieInfo(id: widget.serieId);
    setState(() {});
  }

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SeriePageState>(
      builder: (_) {
        return Center(
          child: state.getSeriePageStatus() == SeriePageStatus.loading
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SerieDetailWidget(
                      serie: state.getSerieInfo(),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 2)),
                    EpisodeListViewHome(
                      serie: state.getSerieInfo(),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
