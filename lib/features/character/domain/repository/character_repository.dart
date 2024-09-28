import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';

abstract class CharacterRepository {
 Future<Either<Failure,List<CharacterEntity>>> getCharacters(String? name);
 Future<Either<Failure,CharacterEntity>> getSingleCharacters(int id);
 Future<Either<Failure,List<CharacterEntity>>> getMultiCharacters(List<int> idies);
 Future<Either<Failure,List<CharacterEntity>>> getFilterCharacters(String newUrl);

}
