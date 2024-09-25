part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({
    @Default(Status.LOADING) Status status,
    List<LocationModel>? locations,
    List<Character>? characters,
    LocationModel? singleLocation,
    String? failure,
  }) = _LocationState;
}
