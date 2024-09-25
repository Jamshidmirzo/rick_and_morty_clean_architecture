part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.getEpisodes(String? name) = _getEpisodes;
  const factory EpisodeEvent.getFilterEpisodes(String urls) = _getFilterEpisodes;
  const factory EpisodeEvent.getSingleEpisodes(int id) = _getSingleEpisodes;
  const factory EpisodeEvent.getMultiEpisodes(List<int> idies) = _getMultiEpisodes;
  const factory EpisodeEvent.getResidentsEpisodes(List<String> urls) = _getResidentsEpisodes;
  const factory EpisodeEvent.getResidentsAndLocationEpisodes(List<String> urls, int id) = _getResidentsAndLocationEpisodes;


}