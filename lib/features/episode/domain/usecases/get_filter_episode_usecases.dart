// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/episode/data/repositories/episode_repositries.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';

class GetFilterEpisodeUsecases extends Usecase<List<EpisodeEntity>, FilterEpisode> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetFilterEpisodeUsecases({
    required this.episodeRepositriesImpl,
  });
  @override
  Future<Either<Failure, List<EpisodeEntity>>> call(FilterEpisode params) {
    return episodeRepositriesImpl.getFilterEpisode(params.urls);
  }
}

class FilterEpisode {
  String urls;
  FilterEpisode({
    required this.urls,
  });
}
