// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/usecase/exception.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';

class EpisodeDatasource {
  Dio dio;
  EpisodeDatasource({
    required this.dio,
  });

  Future<List<Episode>> getAll(String? name) async {
    String url = '';
    if (name != null) {
      url = '$baseUrl/episode/?name=$name';
    } else {
      url = '$baseUrl/episode';
    }
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Episode> episodes = (responce.data['results'] as List)
          .map((item) => Episode.fromJson(item))
          .toList();

      for (var element in episodes) {
        episodeConstant.add(element.episode);
      }
      return episodes;
    } else {
      throw ServerException();
    }
  }

  Future<List<Episode>> getFilter(String? urls) async {
    final url = '$baseUrl/episode/?$urls';

    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Episode> episodes = (responce.data['results'] as List)
          .map((item) => Episode.fromJson(item))
          .toList();

      for (var element in episodes) {
        episodeConstant.add(element.episode);
      }
      return episodes;
    } else {
      throw ServerException();
    }
  }

  Future<List<Episode>> getMulti(List<int> idies) async {
    final url = '$baseUrl/episode/$idies';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<Episode> episodes = (responce.data['results'] as List)
          .map((item) => Episode.fromJson(item))
          .toList();
      return episodes;
    } else {
      throw ServerException();
    }
  }

  Future<Episode> getSingle(int id) async {
    final url = '$baseUrl/episode/$id';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      Episode episode = Episode.fromJson(responce.data);
      return episode;
    } else {
      throw ServerException();
    }
  }

  Future<List<Character>> getCharacter(List<String> urles) async {
    List<Character> characters = [];
    for (var element in urles) {
      final responce = await dio.get(element);
      if (responce.statusCode == 200) {
        characters.add(Character.fromMap(responce.data));
      } else {
        throw ServerException();
      }
    }
    return characters;
  }
}
