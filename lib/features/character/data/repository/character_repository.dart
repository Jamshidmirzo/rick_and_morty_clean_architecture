import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/datasource/character_datasource.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/domain/repository/character_repository.dart';

class CharacterRepositoryImpl extends CharacterRepository {
  CharacterRemote characterDatasource;

  CharacterRepositoryImpl({
    required this.characterDatasource,
  });
  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(
      String? name) async {
    return await _getCharacter(
      () => characterDatasource.getCharacters(name),
    );
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> getMultiCharacters(
      List<int> idies) async {
    return await _getMultiCharacter(
        () => characterDatasource.getMultiCharacter(idies));
  }

  @override
  Future<Either<Failure, CharacterEntity>> getSingleCharacters(int id) async {
    return await _getSingleCharacter(
      () => characterDatasource.getSingleCharacter(id),
    );
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> getFilterCharacters(
      String newUrl) {
    return _getFilterCharacter(
      () => characterDatasource.getFilterCharacter(newUrl),
    );
  }

  Future<Either<Failure, List<CharacterEntity>>> _getCharacter(
      Future<List<Character>> Function() getCharacter) async {
    try {
      final getcharacters = await getCharacter();
      List<CharacterEntity> characterentities = [];
      for (var character in getcharacters) {
        characterentities.add(character.toEntity());
        statusConstant.add(character.status);
        speciesConstant.add(character.species);
        genderConstant.add(character.gender);
      }
      return Right(characterentities);
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  Future<Either<Failure, List<CharacterEntity>>> _getMultiCharacter(
      Future<List<Character>> Function() getMultiCharacter) async {
    try {
      final characters = await getMultiCharacter();
      List<CharacterEntity> characterentities =
          characters.map((element) => element.toEntity()).toList();
      return Right(characterentities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<CharacterEntity>>> _getFilterCharacter(
      Future<List<Character>> Function() getFilterCharacter) async {
    try {
      final characters = await getFilterCharacter();
      List<CharacterEntity> characterEntities =
          characters.map((element) => element.toEntity()).toList();

      return Right(characterEntities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, CharacterEntity>> _getSingleCharacter(
      Future<Character> Function() getSingleCharacter) async {
    try {
      final characters = await getSingleCharacter();
      return Right(characters.toEntity());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
