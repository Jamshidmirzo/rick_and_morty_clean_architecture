// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/repository/character_repository.dart';

class GetAllCharactersUsecases
    extends Usecase<List<Character>, GetAllCharacterParams> {
  CharacterRepository characterRepository;
  GetAllCharactersUsecases({
    required this.characterRepository,
  });
  @override
  Future<Either<Failure, List<Character>>> call(GetAllCharacterParams params) {
    return characterRepository.getCharacters(params.name);
  }
}

class GetAllCharacterParams {
  String? name;
  GetAllCharacterParams(
   {required this.name}
  );
}
