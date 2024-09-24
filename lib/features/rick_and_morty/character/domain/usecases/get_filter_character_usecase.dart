// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/repository/character_repository.dart';

class GetFilterCharacterUsecase
    extends Usecase<List<Character>, FilterCharacterParams> {
  CharacterRepositoryImpl characterRepositoryImpl;
  GetFilterCharacterUsecase({
    required this.characterRepositoryImpl,
  });

  @override
  Future<Either<Failure, List<Character>>> call(FilterCharacterParams params) {
    return characterRepositoryImpl.getFilterCharacters(params.newUrl);
  }
}

class FilterCharacterParams {
  String newUrl;
  FilterCharacterParams({
    required this.newUrl,
  });
}
