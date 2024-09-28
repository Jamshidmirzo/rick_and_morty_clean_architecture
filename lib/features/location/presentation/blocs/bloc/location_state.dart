part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({
    @Default(Status.LOADING) Status status,
    List<LocationModelEntity>? locations,
    List<CharacterEntity>? characters,
    LocationModelEntity? singleLocation,
    String? failure,
  }) = _LocationState;
}
