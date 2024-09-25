part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  factory EpisodeState({
    @Default(Status.LOADING) Status status,
    String? failure,
    List<Episode>? episodes,
    List<Character>? characters,
    Episode? singleEpisodes,
  }) = _EpisodeState;
}
