import 'package:equatable/equatable.dart';

class EpisodeDetail extends Equatable {
  final String id;
  final String name;
  final String image;
  final int number;
  final int season;
  final String summary;

  EpisodeDetail({
    required this.id,
    required this.name,
    required this.image,
    required this.number,
    required this.season,
    required this.summary,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      image,
      number,
      season,
      summary,
    ];
  }

  factory EpisodeDetail.initial() {
    return EpisodeDetail(
      id: "",
      name: "",
      image: "",
      number: -1,
      season: -1,
      summary: "",
    );
  }

  factory EpisodeDetail.fromJson(Map<String, dynamic> json) {
    return EpisodeDetail(
      image: (json['image']?["medium"]) ?? "",
      id: json['id'].toString(),
      name: json['name'] as String,
      number: json['number'] as int,
      season: (json['season']) ?? 0,
      summary: (json['summary']) ?? "",
    );
  }

  @override
  String toString() {
    return 'EpisodeDetail(id: $id,name: $name,image: $image, number: $number, season: $season, summary: $summary,)';
  }
}
