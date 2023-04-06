// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import 'episode_simple_model.dart';

class Serie extends Equatable {
  final String id;
  final String name;
  final String summary;
  final String image;
  List<EpisodeSimple> episodeList;

  Serie({
    required this.id,
    required this.name,
    required this.summary,
    required this.image,
    required this.episodeList,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      summary,
      image,
      episodeList,
    ];
  }

  factory Serie.initial() {
    return Serie(
      id: "",
      name: "",
      summary: "",
      image: "",
      episodeList: [],
    );
  }

  factory Serie.fromJson(Map<String, dynamic> json) {
    return Serie(
      image: (json['image']?["medium"]) ?? "",
      summary: json['summary'] as String,
      episodeList: [],
      id: json['id'].toString(),
      name: json['name'] as String,
    );
  }

  @override
  String toString() {
    return 'Serie(id: $id,name: $name,summary: $summary,image: $image,episodeList: $episodeList,)';
  }
}
