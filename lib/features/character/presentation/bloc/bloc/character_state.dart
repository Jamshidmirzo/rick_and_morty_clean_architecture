part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  factory CharacterState(
    {
    @Default(Status.LOADING) Status status,
    List<CharacterEntity>? character,
    CharacterEntity? singleCharacter,
    String? message,
  }
  )=_CharacterState;
}
