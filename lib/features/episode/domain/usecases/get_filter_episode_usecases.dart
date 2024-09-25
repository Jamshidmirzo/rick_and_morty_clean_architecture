// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/episode/data/repositories/episode_repositries.dart';

class GetFilterEpisodeUsecases extends Usecase<List<Episode>, FilterEpisode> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetFilterEpisodeUsecases({
    required this.episodeRepositriesImpl,
  });
  @override
  Future<Either<Failure, List<Episode>>> call(FilterEpisode params) {
    return episodeRepositriesImpl.getFilterEpisode(params.urls);
  }
}

class FilterEpisode {
  String urls;
  FilterEpisode({
    required this.urls,
  });
}
