// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/character/data/repository/character_repository.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';

class GetFilterCharacterUsecase
    extends Usecase<List<CharacterEntity>, FilterCharacterParams> {
  CharacterRepositoryImpl characterRepositoryImpl;
  GetFilterCharacterUsecase({
    required this.characterRepositoryImpl,
  });

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(FilterCharacterParams params) {
    return characterRepositoryImpl.getFilterCharacters(params.newUrl);
  }
}

class FilterCharacterParams {
  String newUrl;
  FilterCharacterParams({
    required this.newUrl,
  });
}
