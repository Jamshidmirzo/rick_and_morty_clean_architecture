// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/datasources/episode_datasource.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/repositories/episode_repositories.dart';

class EpisodeRepositriesImpl extends EpisodeRepositories {
  EpisodeDatasource episodeDatasource;
  EpisodeRepositriesImpl({
    required this.episodeDatasource,
  });
  @override
  Future<Either<Failure, List<Episode>>> getAllEpisode(String? name) async {
    return await _getAll(() => episodeDatasource.getAll(name));
  }

  @override
  Future<Either<Failure, List<Episode>>> getMultiEpisode(
      List<int> idies) async {
    return await _getMulti(() => episodeDatasource.getMulti(idies));
  }

  @override
  Future<Either<Failure, List<Character>>> getResidentsEpisode(
      List<String> urls) async {
    return await _getCharacters(() => episodeDatasource.getCharacter(urls));
  }

  @override
  Future<Either<Failure, Episode>> getSingleEpisode(int id) async {
    return await _getSingle(() => episodeDatasource.getSingle(id));
  }

  @override
  Future<Either<Failure, List<Episode>>> getFilterEpisode(String newUrl) {
    return _getFilter(() => episodeDatasource.getFilter(newUrl));
  }
}

Future<Either<Failure, List<Episode>>> _getFilter(
    Future<List<Episode>> Function() getFilter) async {
  try {
    return Right(await getFilter());
  } catch (e) {
    return Left(ServerFailure());
  }
}

Future<Either<Failure, List<Episode>>> _getAll(
    Future<List<Episode>> Function() getAll) async {
  try {
    return Right(await getAll());
  } catch (e) {
    return Left(ServerFailure());
  }
}

Future<Either<Failure, List<Episode>>> _getMulti(
    Future<List<Episode>> Function() getMulti) async {
  try {
    return Right(await getMulti());
  } catch (e) {
    return Left(ServerFailure());
  }
}



Future<Either<Failure, Episode>> _getSingle(
    Future<Episode> Function() getSingle) async {
  try {
    return Right(await getSingle());
  } catch (e) {
    return Left(ServerFailure());
  }
}

Future<Either<Failure, List<Character>>> _getCharacters(
    Future<List<Character>> Function() characters) async {
  try {
    return Right(await characters());
  } catch (e) {
    return Left(ServerFailure());
  }
}
