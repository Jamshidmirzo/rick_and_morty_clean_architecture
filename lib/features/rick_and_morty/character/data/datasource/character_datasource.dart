// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/usecase/exception.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';

class CharacterDatasource {
  Dio dio;
  CharacterDatasource({
    required this.dio,
  });

  Future<List<Character>> getCharacters(String? name) async {
    String url = '';
    if (name != null) {
      url = '$baseUrl/character/?name=$name';
    } else {
      url = '$baseUrl/character';
    }
    final responce = await dio.get(url);
    Set status = {};
    Set species = {};
    Set gender = {};
    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map((data) => Character.fromMap(data))
          .toList();
      for (var element in characters) {
        status.add(element.status);
        species.add(element.species);
        gender.add(element.gender);
      }
      statusConstant = status;
      speciesConstant = species;
      genderConstant = gender;

      return characters;
    } else {
      throw ServerException();
    }
  }

  Future<Character> getSingleCharacter(int id) async {
    final url = '$baseUrl/character/$id';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      return Character.fromMap(responce.data);
    } else {
      throw ServerException();
    }
  }

  Future<List<Character>> getMultiCharacter(List idies) async {
    final url = '$baseUrl/character/$idies';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map((data) => Character.fromMap(data))
          .toList();
      return characters;
    } else {
      throw ServerException();
    }
  }

  Future<List<Character>> getFilterCharacter(String newUrl) async {
    final url = '$baseUrl/character/?$newUrl';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map(
            (data) => Character.fromMap(data),
          )
          .toList();
      return characters;
    } else {
      throw ServerException();
    }
  }
}
