class SeriesConstants {
  //Series serv urls
  static String getSeriesInfoUrl = "https://api.tvmaze.com/shows/";
  static String getSeriesEpisode(String id) {
    return "https://api.tvmaze.com/shows/${id}/episodes";
  }

  //Series route name
  static const routeName = "/";
}
