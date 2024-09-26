import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/datasource/character_datasource.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/repository/character_repository.dart';

class CharacterRepositoryImpl extends CharacterRepository {
  CharacterRemote characterDatasource;
  CharacterRepositoryImpl({
    required this.characterDatasource,
  });
  @override
  Future<Either<Failure, List<Character>>> getCharacters(String? name) async {
    return await _getCharacter(
      () => characterDatasource.getCharacters(name),
    );
  }

  @override
  Future<Either<Failure, List<Character>>> getMultiCharacters(
      List<int> idies) async {
    return await _getMultiCharacter(
        () => characterDatasource.getMultiCharacter(idies));
  }

  @override
  Future<Either<Failure, Character>> getSingleCharacters(int id) async {
    return await _getSingleCharacter(
      () => characterDatasource.getSingleCharacter(id),
    );
  }

  @override
  Future<Either<Failure, List<Character>>> getFilterCharacters(String newUrl) {
    return _getFilterCharacter(
      () => characterDatasource.getFilterCharacter(newUrl),
    );
  }
}

Future<Either<Failure, List<Character>>> _getCharacter(
    Future<List<Character>> Function() getCharacter) async {
  try {
    return Right(
      await getCharacter(),
    );
  } catch (e) {
    return Left(
      ServerFailure(),
    );
  }
}

Future<Either<Failure, List<Character>>> _getMultiCharacter(
    Future<List<Character>> Function() getMultiCharacter) async {
  try {
    return Right(await getMultiCharacter());
  } catch (e) {
    return Left(ServerFailure());
  }
}

Future<Either<Failure, List<Character>>> _getFilterCharacter(
    Future<List<Character>> Function() getFilterCharacter) async {
  try {
    return Right(await getFilterCharacter());
  } catch (e) {
    return Left(ServerFailure());
  }
}

Future<Either<Failure, Character>> _getSingleCharacter(
    Future<Character> Function() getSingleCharacter) async {
  try {
    return Right(await getSingleCharacter());
  } catch (e) {
    return Left(ServerFailure());
  }
}
