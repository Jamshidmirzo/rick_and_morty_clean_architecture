import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';

abstract class CharacterRepository {
 Future<Either<Failure,List<Character>>> getCharacters();
 Future<Either<Failure,Character>> getSingleCharacters(int id);
 Future<Either<Failure,List<Character>>> getMultiCharacters(List<int> idies);
}
