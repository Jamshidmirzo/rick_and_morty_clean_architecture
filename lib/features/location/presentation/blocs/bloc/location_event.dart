part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getAllLocation(String? name) = _getAllLocation;

  const factory LocationEvent.getFilterLocation(String url) = _getFilterLocation;

  const factory LocationEvent.getSingleLocation({required int id}) =
      _getSingleLocation;
  const factory LocationEvent.getMultiLocation({required List<int> idies}) =
      _getMultiLocation;
  const factory LocationEvent.getCharacters({required List<String> ulrs}) =
      _getCharacters;
  const factory LocationEvent.getCharactersAndLocation(
      {required List<String> ulrs, required int id}) = _getCharactersAndLocations;
}
