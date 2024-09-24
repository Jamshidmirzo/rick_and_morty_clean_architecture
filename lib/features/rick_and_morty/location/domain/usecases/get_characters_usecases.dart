// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/repositories/location_repositories.dart';

class GetCharactersUsecases
    extends Usecase<List<Character>, GetCharacterParamas> {
  LocationRepositoriesImpl locationRepositoriesImpl;
  GetCharactersUsecases({
    required this.locationRepositoriesImpl,
  });

  @override
  Future<Either<Failure, List<Character>>> call(GetCharacterParamas params) {
    return locationRepositoriesImpl.getCharacters(params.urls);
  }
}

class GetCharacterParamas {
  List<String> urls;
  GetCharacterParamas({
    required this.urls,
  });
}
