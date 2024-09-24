// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  factory Episode(
      {required int id,
      required String name,
      required String air_date,
      required String episode,
      required List<String> characters,
      required String url,
      required String created}) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeImpl.fromJson(json);

  factory Episode.fromMap(Map<String, dynamic> json) {
    return Episode(
        id: json['id'] as int,
        name: json['name'] as String,
        air_date: json['air_date'] as String,
        episode: json['episode'] as String,
        characters: json['characters'] as List<String>,
        url: json['url'] as String,
        created: json['created'] as String);
  }
}
