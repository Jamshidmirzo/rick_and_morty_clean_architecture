// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';
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
}



extension EpisodeMapper on Episode {
  EpisodeEntity toEpisode() {
    return EpisodeEntity(
        id: id,
        name: name,
        air_date: air_date,
        episode: episode,
        characters: characters,
        url: url,
        created: created);
  }
}
