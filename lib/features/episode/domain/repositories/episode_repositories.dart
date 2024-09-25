import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';

abstract class EpisodeRepositories {
  Future<Either<Failure, List<Episode>>> getAllEpisode(String? name);
  Future<Either<Failure, Episode>> getSingleEpisode(int id);
  Future<Either<Failure, List<Episode>>> getMultiEpisode(List<int> idies);
  Future<Either<Failure, List<Episode>>> getFilterEpisode(String newUrl);
  Future<Either<Failure, List<Character>>> getResidentsEpisode(
      List<String> urls);
}
