part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.getCharacters(String? name) = _getCharacters;
  const factory CharacterEvent.getSingleCharacters({required int id}) = _getSingleCharacters;
  const factory CharacterEvent.getMultiCharacters({required List<int> idies}) = _getMultiCharacters;
  const factory CharacterEvent.getFilterCharacters({required String newUrl}) = _getFilterCharacters;

}