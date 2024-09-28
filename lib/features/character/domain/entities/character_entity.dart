import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/data/model/location.dart';
import 'package:rick_and_morty/features/character/data/model/origin.dart';

class CharacterEntity {
  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  OriginEntity origin;
  LocationEntity location;
  String image;
  List<String> episode;
  String url;
  String created;
  CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
}

class LocationEntity {
  String name;
  String url;
  LocationEntity({
    required this.name,
    required this.url,
  });
}

class OriginEntity {
  String name;
  String url;
  OriginEntity({
    required this.name,
    required this.url,
  });
  
}



extension CharacterMapper on CharacterEntity {
  Character toModel() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: Origin(name: origin.name, url: origin.url),
      location: Location(name: location.name, url: location.url),
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }
}

