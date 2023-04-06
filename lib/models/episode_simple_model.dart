import 'package:equatable/equatable.dart';

class EpisodeSimple extends Equatable {
  final String id;
  final String name;
  final String image;
  final int number;
  final int season;

  EpisodeSimple({
    required this.id,
    required this.name,
    required this.image,
    required this.number,
    required this.season,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      image,
      number,
      season,
    ];
  }

  factory EpisodeSimple.initial() {
    return EpisodeSimple(
      id: "",
      name: "",
      image: "",
      number: -1,
      season: -1,
    );
  }

  factory EpisodeSimple.fromJson(Map<String, dynamic> json) {
    return EpisodeSimple(
      image: (json['image']?["medium"]) ?? "",
      id: json['id'].toString(),
      name: json['name'] as String,
      number: json['number'] as int,
      season: (json['season']) ?? 0,
    );
  }

  @override
  String toString() {
    return 'EpisodeSimple(id: $id,name: $name,image: $image, number: $number, season: $season,)';
  }
}
