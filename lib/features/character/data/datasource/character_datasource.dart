// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/exception.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';

abstract class CharacterRemote {
  Future<List<Character>> getCharacters(String? name);
  Future<Character> getSingleCharacter(int id);
  Future<List<Character>> getMultiCharacter(List idies);
  Future<List<Character>> getFilterCharacter(String newUrl);
}

class CharacterDatasource extends CharacterRemote {
  Dio dio;
  CharacterDatasource({
    required this.dio,
  }) {
    dio.interceptors.add(InterCeptor());
  }
  @override
  Future<List<Character>> getCharacters(String? name) async {
    String url = '';
    if (name != null) {
      url = '$baseUrl/character/?name=$name';
    } else {
      url = '$baseUrl/character';
    }

    final responce = await dio.get(url);

    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map((data) => Character.fromJson(data))
          .toList();
      return characters;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Character> getSingleCharacter(int id) async {
    final url = '$baseUrl/character/$id';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      return Character.fromJson(responce.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<Character>> getMultiCharacter(List idies) async {
    final url = '$baseUrl/character/$idies';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map((data) => Character.fromJson(data))
          .toList();
      return characters;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<Character>> getFilterCharacter(String newUrl) async {
    final url = '$baseUrl/character/?$newUrl';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Character> characters = (responce.data['results'] as List)
          .map(
            (data) => Character.fromJson(data),
          )
          .toList();
      return characters;
    } else {
      throw ServerException();
    }
  }
}

class InterCeptor extends InterceptorsWrapper {}
