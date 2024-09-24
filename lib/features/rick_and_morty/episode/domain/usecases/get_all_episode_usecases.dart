// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/repositories/episode_repositries.dart';

class GetAllEpisodeUsecases extends Usecase<List<Episode>, AllEpisodeParams> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetAllEpisodeUsecases({
    required this.episodeRepositriesImpl,
  });
  @override
  Future<Either<Failure, List<Episode>>> call(AllEpisodeParams params) {
    return episodeRepositriesImpl.getAllEpisode(params.name);
  }
}

class AllEpisodeParams {
  String? name;
  AllEpisodeParams({
    this.name,
  });
}
