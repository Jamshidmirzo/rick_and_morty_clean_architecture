// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/repository/character_repository.dart';

class GetSingleCharactersUsecases extends Usecase<Character, SingleCharacter> {
  CharacterRepository characterRepository;
  GetSingleCharactersUsecases({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, Character>> call(SingleCharacter params) {
    return characterRepository.getSingleCharacters(params.id);
  }
}

class SingleCharacter {
  int id;
  SingleCharacter({
    required this.id,
  });
}
