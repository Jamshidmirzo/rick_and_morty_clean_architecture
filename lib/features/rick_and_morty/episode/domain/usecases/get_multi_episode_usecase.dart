// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/repositories/episode_repositries.dart';

class GetMultiEpisodeUsecase
    extends Usecase<List<Episode>, MultiEpisodeParams> {
  EpisodeRepositriesImpl episodeRepositriesImpl;
  GetMultiEpisodeUsecase({required this.episodeRepositriesImpl});
  @override
  Future<Either<Failure, List<Episode>>> call(MultiEpisodeParams params) {
    return episodeRepositriesImpl.getMultiEpisode(params.idies);
  }
}

class MultiEpisodeParams {
  List<int> idies;
  MultiEpisodeParams({
    required this.idies,
  });
}
