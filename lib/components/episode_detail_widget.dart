import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../contants/visual_constants.dart';
import '../states/episode_state.dart';
import 'network_image_widget.dart';

class EpisodeDetailWidget extends StatefulWidget {
  const EpisodeDetailWidget({super.key, required this.id});
  final String id;
  @override
  State<EpisodeDetailWidget> createState() => _EpisodeDetailWidgetState();
}

class _EpisodeDetailWidgetState extends State<EpisodeDetailWidget> {
  _EpisodeDetailWidgetState();

  EpisodePageState state = EpisodePageState();

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
          children: [
            state.getEpisodePageStatus() == EpisodePageStatus.loading
                ? CircularProgressIndicator()
                : Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.getEpisodeInfo().name,
                          style: VisualConstants.mainTheme(context: context)
                              .primaryTextTheme
                              .titleLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                        ),
                        //TODO tentar aumentar a imagem, ou mostrar mais informações
                        NetWorkImage(
                          image: state.getEpisodeInfo().image,
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.height * 0.5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 4),
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Html(
                                data: state.getEpisodeInfo().summary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
