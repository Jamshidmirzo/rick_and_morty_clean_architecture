// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/location/data/datasources/location_datasources.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/domain/repositories/location_repositories.dart';

class LocationRepositoriesImpl extends LocationRepositories {
   LocationRemote locationDatasources;
  LocationRepositoriesImpl({
    required this.locationDatasources,
  });
  @override
  Future<Either<Failure, List<LocationModel>>> getAllLocation(
      String? name) async {
    return _getAllLocation(() => locationDatasources.getAllLocation(name));
  }

  @override
  Future<Either<Failure, List<LocationModel>>> getMultiLocation(
      List<int> idies) {
    return _getMultiLocation(
      () => locationDatasources.getMultiLocation(idies),
    );
  }

  @override
  Future<Either<Failure, LocationModel>> getSingleLocation(int id) {
    return _getSingleLocation(
      () => locationDatasources.getSingleLocation(id),
    );
  }

  @override
  Future<Either<Failure, List<Character>>> getCharacters(
      List<String> urls) async {
    return await _getCharacters(
      () => locationDatasources.getCharacters(urls),
    );
  }

  @override
  Future<Either<Failure, List<LocationModel>>> getFilterLocation(
      String urls) async {
    return await _getFilterLocation(
        () => locationDatasources.getFilterLocation(urls));
  }
}








Future<Either<Failure, List<LocationModel>>> _getFilterLocation(
    Future<List<LocationModel>> Function() filter) async {
  try {
    return Right(await filter());
  } catch (e) {
    return Left(
      ServerFailure(),
    );
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

Future<Either<Failure, List<LocationModel>>> _getAllLocation(
    Future<List<LocationModel>> Function() location) async {
  try {
    return Right(await location());
  } catch (e) {
    return Left(
      ServerFailure(),
    );
  }
}

Future<Either<Failure, List<LocationModel>>> _getMultiLocation(
    Future<List<LocationModel>> Function() locations) async {
  try {
    return Right(await locations());
  } catch (e) {
    return Left(
      ServerFailure(),
    );
  }
}

Future<Either<Failure, LocationModel>> _getSingleLocation(
    Future<LocationModel> Function() location) async {
  try {
    return Right(await location());
  } catch (e) {
    return Left(
      ServerFailure(),
    );
  }
}
