import 'dart:math';

import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';

abstract class LocationLocaldatasources {
  Future<LocationModel> toLocation(LocationModelEntity locationModelEntity);
  Future<LocationModelEntity> toEntity(LocationModel model);
  Future<CharacterEntity> toCharacterEntity(Character character);
  Future<Character> toCharacter(CharacterEntity character);
}

class LocationDataSourcesImpl extends LocationLocaldatasources {
  @override
  Future<LocationModelEntity> toEntity(LocationModel model) async {
    final entity = model.toEntity();
    return entity;
  }

  @override
  Future<LocationModel> toLocation(
      LocationModelEntity locationModelEntity) async {
    final location = locationModelEntity.toLocation();
    return location;
  }

  @override
  Future<Character> toCharacter(CharacterEntity characterEntity) async {
    final character = characterEntity.toModel();
    return character;
  }

  @override
  Future<CharacterEntity> toCharacterEntity(Character character) async{
    final characterChange = character.toEntity();
    return characterChange;
  }
}
