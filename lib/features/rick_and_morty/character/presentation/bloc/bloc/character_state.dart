part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  factory CharacterState({
    @Default(Status.LOADING) Status status,
    List<Character>? character,
    Character? singleCharacter,
    Failure? message,
  })=_CharacterState;
}
