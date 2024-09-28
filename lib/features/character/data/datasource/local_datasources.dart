import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';

abstract class LocalDatasources {
  Future<CharacterEntity> getCharactersEntity(Character character);
  Future<Character> toCharacter(CharacterEntity characterEntity);
}

class LocalDatasourcesImpl extends LocalDatasources {
  @override
  Future<CharacterEntity> getCharactersEntity(Character character) async {
    CharacterEntity characterEntity = character.toEntity();
    return characterEntity;
  }

  @override
  Future<Character> toCharacter(CharacterEntity characterEntity) async {
    Character character = characterEntity.toModel();
    return character;
  }
}
