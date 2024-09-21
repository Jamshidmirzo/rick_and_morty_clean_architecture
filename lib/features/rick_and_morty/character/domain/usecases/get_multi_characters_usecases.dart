// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/repository/character_repository.dart';

class GetMultiCharactersUsecases
    extends Usecase<List<Character>, MultiCharacter> {
  CharacterRepository characterRepository;
  GetMultiCharactersUsecases({
    required this.characterRepository,
  });

  @override
  Future<Either<Failure, List<Character>>> call(MultiCharacter params) {
    return characterRepository.getMultiCharacters(params.params);
  }
}

class MultiCharacter {
  List<int> params;
  MultiCharacter({
    required this.params,
  });
}
