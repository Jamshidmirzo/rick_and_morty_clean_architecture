import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/model/location_model.dart';

abstract class LocationRepositories {
  Future<Either<Failure, List<LocationModel>>> getAllLocation(String? name);
  Future<Either<Failure, List<LocationModel>>> getFilterLocation(String urls);
  Future<Either<Failure, LocationModel>> getSingleLocation(int id);
  Future<Either<Failure, List<LocationModel>>> getMultiLocation(List<int> idies);
  Future<Either<Failure, List<Character>>> getCharacters(List<String> urls);


}
