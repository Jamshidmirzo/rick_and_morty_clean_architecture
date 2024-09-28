import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';

abstract class EpisodeRepositories {
  Future<Either<Failure, List<EpisodeEntity>>> getAllEpisode(String? name);
  Future<Either<Failure, EpisodeEntity>> getSingleEpisode(int id);
  Future<Either<Failure, List<EpisodeEntity>>> getMultiEpisode(List<int> idies);
  Future<Either<Failure, List<EpisodeEntity>>> getFilterEpisode(String newUrl);
  Future<Either<Failure, List<CharacterEntity>>> getResidentsEpisode(
      List<String> urls);
}
