// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/episode/data/datasources/episode_datasource.dart';
import 'package:rick_and_morty/features/episode/data/datasources/episode_localdatasource.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';
import 'package:rick_and_morty/features/episode/domain/repositories/episode_repositories.dart';

class EpisodeRepositriesImpl extends EpisodeRepositories {
  EpisodeRemote episodeDatasource;
  EpisodeLocaldatasource episodeLocaldatasource;
  EpisodeRepositriesImpl({
    required this.episodeDatasource,
    required this.episodeLocaldatasource,
  });
  @override
  Future<Either<Failure, List<EpisodeEntity>>> getAllEpisode(
      String? name) async {
    return await _getAll(() => episodeDatasource.getAll(name));
  }

  @override
  Future<Either<Failure, List<EpisodeEntity>>> getMultiEpisode(
      List<int> idies) async {
    return await _getMulti(() => episodeDatasource.getMulti(idies));
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> getResidentsEpisode(
      List<String> urls) async {
    return await _getCharacters(() => episodeDatasource.getCharacter(urls));
  }

  @override
  Future<Either<Failure, EpisodeEntity>> getSingleEpisode(int id) async {
    return await _getSingle(() => episodeDatasource.getSingle(id));
  }

  @override
  Future<Either<Failure, List<EpisodeEntity>>> getFilterEpisode(String newUrl) {
    return _getFilter(() => episodeDatasource.getFilter(newUrl));
  }

  Future<Either<Failure, List<EpisodeEntity>>> _getAll(
      Future<List<Episode>> Function() getAll) async {
    try {
      List<EpisodeEntity> episodesentities = [];
      final getAllEpisode = await getAll();
      for (var element in getAllEpisode) {
        episodesentities
            .add(await episodeLocaldatasource.toEpisodeEntity(element));
      }
      return Right(episodesentities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<EpisodeEntity>>> _getFilter(
      Future<List<Episode>> Function() getFilter) async {
    try {
      List<EpisodeEntity> charactiriesEntity = [];
      final filter = await getFilter();
      for (var element in filter) {
        charactiriesEntity
            .add((await episodeLocaldatasource.toEpisodeEntity(element)));
      }
      return Right(charactiriesEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<EpisodeEntity>>> _getMulti(
      Future<List<Episode>> Function() getMulti) async {
    try {
      final multi = await getMulti();
      List<EpisodeEntity> characterEntity = [];
      for (var element in multi) {
        characterEntity
            .add(await episodeLocaldatasource.toEpisodeEntity(element));
      }
      return Right(characterEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, EpisodeEntity>> _getSingle(
      Future<Episode> Function() getSingle) async {
    try {
      final single = await getSingle();

      return Right(await episodeLocaldatasource.toEpisodeEntity(single));
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<CharacterEntity>>> _getCharacters(
      Future<List<Character>> Function() characters) async {
    try {
      final character = await characters();
      List<CharacterEntity> characterEntity = [];
      for (var element in character) {
        characterEntity
            .add(await episodeLocaldatasource.toCharacterEntity(element));
      }
      return Right(characterEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
