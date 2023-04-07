import 'package:flutter/material.dart';
import 'package:tv_app/components/serie_widgets/serie_page_widget.dart';
import 'package:tv_app/constants/strings_constants.dart';
import 'package:tv_app/states/serie_state.dart';

class SeriePage extends StatefulWidget {
  const SeriePage({super.key, required this.serieId});
  final String serieId;

  @override
  State<SeriePage> createState() => _SeriePageState();
}

class _SeriePageState extends State<SeriePage> {
  SeriePageState state = SeriePageState();

  Future<void> getInfo() async {
    //Code comented for possible future integration (Change de initial route)
    /* final SerieRouteArguments? args =
        ModalRoute.of(context)?.settings.arguments as SerieRouteArguments?;
    String? SerieId = args?.SerieId ?? ""; */
  }

  @override
  void initState() {
    //Code comented for possible future integration (Change de initial route)
    /* getInfo(); */
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.InitialPageTitle),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: SeriePageWidget(
                  serieId: widget.serieId,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
