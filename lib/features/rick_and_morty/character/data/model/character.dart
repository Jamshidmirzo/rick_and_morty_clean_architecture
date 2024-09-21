import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/location.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/origin.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
factory Character({
  required int id,
  required String name,
  required String status,
  required String species,
  required String type,
  required String gender,
  required Origin origin,
  required Location location,
  required String image,
  required List<String> episode,
  required String url,
  required String created,
}) = _Character;

factory Character.fromJson(Map<String,Object> json) =>_$CharacterImpl.fromJson(json);

factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      id: map['id'] as int,
      name: map['name'] as String,
      status: map['status'] as String,
      species: map['species'] as String,
      type: map['type'] as String,
      gender: map['gender'] as String,
      origin: Origin.fromMap(map['origin'] as Map<String, dynamic>),
      location: Location.fromMap(map['location'] as Map<String, dynamic>),
      image: map['image'] as String,
      episode: List<String>.from(map['episode'] as List),
      url: map['url'] as String,
      created: map['created'] as String,
    );
  }
}
