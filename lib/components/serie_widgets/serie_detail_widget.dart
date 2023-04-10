import 'package:flutter/material.dart';

import '../../constants/visual_constants.dart';
import '../../models/serie_model.dart';
import 'package:flutter_html/flutter_html.dart';

import '../commons/network_image_widget.dart';

class SerieDetailWidget extends StatefulWidget {
  const SerieDetailWidget({super.key, required this.serie});
  final Serie serie;
  @override
  State<SerieDetailWidget> createState() => _SerieDetailWidgetState();
}

class _SerieDetailWidgetState extends State<SerieDetailWidget> {
  _SerieDetailWidgetState();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.serie.name,
              style: VisualConstants.mainTheme(context: context)
                  .primaryTextTheme
                  .titleLarge,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 2),
            ),
            NetWorkImage(
              image: widget.serie.image,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.height * 0.35,
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              height: MediaQuery.of(context).size.height * 0.09,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Html(
                    style: {
                      "p": Style(
                        fontSize: FontSize(
                          VisualConstants.isWeb(context)
                              ? MediaQuery.of(context).size.width * 0.01
                              : VisualConstants.isTablet(context)
                                  ? MediaQuery.of(context).size.width * 0.02
                                  : MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                    },
                    data: widget.serie.summary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
