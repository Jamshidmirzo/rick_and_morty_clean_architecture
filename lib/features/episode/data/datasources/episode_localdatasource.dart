import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';

abstract class EpisodeLocaldatasource {
  Future<Episode> getEpisode(EpisodeEntity episodeEntity);
  Future<EpisodeEntity> toEpisodeEntity(Episode episode);
  Future<CharacterEntity> toCharacterEntity(Character character);
}

class EpisodeLocaldatasourceImpl extends EpisodeLocaldatasource {
  @override
  Future<Episode> getEpisode(EpisodeEntity episodeEntity) async {
    final episode = episodeEntity.toModel();
    return episode;
  }

  @override
  Future<EpisodeEntity> toEpisodeEntity(Episode episode) async {
    final episodeEntiy = episode.toEpisode();
    return episodeEntiy;
  }

  @override
  Future<CharacterEntity> toCharacterEntity(Character character) async{
    final characterEntity = character.toEntity();
    return characterEntity;
  }
}
