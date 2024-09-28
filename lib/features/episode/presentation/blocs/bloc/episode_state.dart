part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  factory EpisodeState({
    @Default(Status.LOADING) Status status,
    String? failure,
    List<EpisodeEntity>? episodes,
    List<CharacterEntity>? characters,
    EpisodeEntity? singleEpisodes,
  }) = _EpisodeState;
}
