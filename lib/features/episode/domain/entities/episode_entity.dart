// ignore_for_file: non_constant_identifier_names

import 'package:rick_and_morty/features/episode/data/model/episode.dart';

class EpisodeEntity {
  int id;
  String name;
  String air_date;
  String episode;
  List<String> characters;
  String url;
  String created;
  EpisodeEntity({
    required this.id,
    required this.name,
    required this.air_date,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });
}

extension ExtensionMapper on EpisodeEntity {
  Episode toModel() {
    return Episode(
        id: id,
        name: name,
        air_date: air_date,
        episode: episode,
        characters: characters,
        url: url,
        created: created);
  }
}
