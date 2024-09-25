import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/character/data/model/location.dart';
import 'package:rick_and_morty/features/character/data/model/origin.dart';

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

factory Character.fromJson(Map<String,dynamic> json) =>_$CharacterImpl.fromJson(json);

}
