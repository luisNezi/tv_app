import 'package:flutter/material.dart';
import 'package:tv_app/pages/episode_page.dart';
import 'package:tv_app/pages/serie_page.dart';

import 'contants/visual_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tv App',
      routes: {
        '/episode': (context) => EpisodePage(),
      },
      theme: VisualConstants.mainTheme(),
      home: const MyHomePage(title: 'Tv App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                //TODO usar rota "/"
                child: SeriePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
