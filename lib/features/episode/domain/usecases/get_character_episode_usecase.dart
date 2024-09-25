// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/episode/data/repositories/episode_repositries.dart';

class GetCharacterEpisodeUsecase
    extends Usecase<List<Character>, GetCharacterEpisodeParams> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetCharacterEpisodeUsecase({
    required this.episodeRepositriesImpl,
  });
  @override
  Future<Either<Failure, List<Character>>> call(
      GetCharacterEpisodeParams params) {
    return episodeRepositriesImpl.getResidentsEpisode(params.urls);
  }
}

class GetCharacterEpisodeParams {
  List<String> urls;
  GetCharacterEpisodeParams({
    required this.urls,
  });
}
