class EpisodeRouteArguments {
  final String episodeId;
  final String serieName;

  EpisodeRouteArguments(this.episodeId, this.serieName);
}

class SerieRouteArguments {
  // For future implementation, pass the serieId by pushNamed parameters
  final String SerieId;

  SerieRouteArguments(
    this.SerieId,
  );
}
