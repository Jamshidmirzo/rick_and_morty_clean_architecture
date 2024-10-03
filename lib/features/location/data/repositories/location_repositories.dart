// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/location/data/datasources/location_datasources.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';
import 'package:rick_and_morty/features/location/domain/repositories/location_repositories.dart';

class LocationRepositoriesImpl extends LocationRepositories {
  LocationRemote locationDatasources;
  LocationRepositoriesImpl({
    required this.locationDatasources,
  });
  @override
  Future<Either<Failure, List<LocationModelEntity>>> getAllLocation(
      String? name) async {
    return _getAllLocation(() => locationDatasources.getAllLocation(name));
  }

  @override
  Future<Either<Failure, List<LocationModelEntity>>> getMultiLocation(
      List<int> idies) {
    return _getMultiLocation(
      () => locationDatasources.getMultiLocation(idies),
    );
  }

  @override
  Future<Either<Failure, LocationModelEntity>> getSingleLocation(int id) {
    return _getSingleLocation(
      () => locationDatasources.getSingleLocation(id),
    );
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(
      List<String> urls) async {
    return await _getCharacters(
      () => locationDatasources.getCharacters(urls),
    );
  }

  @override
  Future<Either<Failure, List<LocationModelEntity>>> getFilterLocation(
      String urls) async {
    return await _getFilterLocation(
        () => locationDatasources.getFilterLocation(urls));
  }

  Future<Either<Failure, List<LocationModelEntity>>> _getFilterLocation(
      Future<List<LocationModel>> Function() filter) async {
    try {
      final filters = await filter();
      List<LocationModelEntity> filtersEntity =
          filters.map((element) => element.toEntity()).toList();

      return Right(filtersEntity);
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  Future<Either<Failure, List<CharacterEntity>>> _getCharacters(
      Future<List<Character>> Function() characters) async {
    try {
      final charactersf = await characters();
      List<CharacterEntity> characterEntity =
          charactersf.map((element) => element.toEntity()).toList();
      return Right(characterEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<LocationModelEntity>>> _getAllLocation(
      Future<List<LocationModel>> Function() location) async {
    try {
      final locations = await location();
      List<LocationModelEntity> locationEntity = [];
      for (var element in locations) {
        locationEntity.add(element.toEntity());
        locationTypeConstant.add(element.type);
        locationDimensionConstant.add(element.dimension);
      }
      return Right(locationEntity);
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  Future<Either<Failure, List<LocationModelEntity>>> _getMultiLocation(
      Future<List<LocationModel>> Function() locations) async {
    try {
      final locationf = await locations();
      List<LocationModelEntity> locationEntity =
          locationf.map((element) => element.toEntity()).toList();
      return Right(locationEntity);
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  Future<Either<Failure, LocationModelEntity>> _getSingleLocation(
      Future<LocationModel> Function() location) async {
    try {
      final locationf = await location();
      return Right(locationf.toEntity());
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }
}
