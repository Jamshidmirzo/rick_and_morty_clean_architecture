import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/domain/repository/character_repository.dart';

class GetSingleCharactersUsecases extends Usecase<CharacterEntity, SingleCharacter> {
  CharacterRepository characterRepository;
  GetSingleCharactersUsecases({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, CharacterEntity>> call(SingleCharacter params) {
    return characterRepository.getSingleCharacters(params.id);
  }
}

class SingleCharacter {
  int id;
  SingleCharacter({
    required this.id,
  });
}
