import 'package:flutter/material.dart';
import '../components/episode_widgets/episode_page_widget.dart';
import '../contants/arguments_constants.dart';

class EpisodePage extends StatefulWidget {
  const EpisodePage({super.key});

  @override
  State<EpisodePage> createState() => _EpisodePageState();
}

class _EpisodePageState extends State<EpisodePage> {
  @override
  Widget build(BuildContext context) {
    //Parameter pass thru args (pushnamed)
    final EpisodeRouteArguments? args =
        ModalRoute.of(context)?.settings.arguments as EpisodeRouteArguments?;
    String? episodeId = args?.episodeId ?? "";
    String? episodeName = args?.episodeName ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text(episodeName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: EpisodePageWidget(id: episodeId),
            )
          ],
        ),
      ),
    );
  }
}
