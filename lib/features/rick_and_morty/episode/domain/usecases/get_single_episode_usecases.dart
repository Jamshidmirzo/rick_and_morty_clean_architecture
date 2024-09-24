// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/repositories/episode_repositries.dart';

class GetSingleEpisodeUsecases extends Usecase<Episode, SingleEpisodeParams> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetSingleEpisodeUsecases({
    required this.episodeRepositriesImpl,
  });
  @override
  Future<Either<Failure, Episode>> call(SingleEpisodeParams params) {
    return episodeRepositriesImpl.getSingleEpisode(params.id);
  }
}

class SingleEpisodeParams {
  int id;
  SingleEpisodeParams({
    required this.id,
  });
}
