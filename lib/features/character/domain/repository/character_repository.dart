import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';

abstract class CharacterRepository {
 Future<Either<Failure,List<Character>>> getCharacters(String? name);
 Future<Either<Failure,Character>> getSingleCharacters(int id);
 Future<Either<Failure,List<Character>>> getMultiCharacters(List<int> idies);
 Future<Either<Failure,List<Character>>> getFilterCharacters(String newUrl);

}
