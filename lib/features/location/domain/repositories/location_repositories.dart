import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';

abstract class LocationRepositories {
  Future<Either<Failure, List<LocationModelEntity>>> getAllLocation(String? name);
  Future<Either<Failure, List<LocationModelEntity>>> getFilterLocation(String urls);
  Future<Either<Failure, LocationModelEntity>> getSingleLocation(int id);
  Future<Either<Failure, List<LocationModelEntity>>> getMultiLocation(List<int> idies);
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(List<String> urls);


}
