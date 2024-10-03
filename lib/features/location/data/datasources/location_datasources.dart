// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/exception.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';

abstract class LocationRemote {
  Future<List<LocationModel>> getAllLocation(String? name);
  Future<List<LocationModel>> getFilterLocation(String urls);
  Future<List<LocationModel>> getMultiLocation(List<int> idies);
  Future<LocationModel> getSingleLocation(int id);
  Future<List<Character>> getCharacters(List<String> urls);
}

class LocationDatasources extends LocationRemote {
  Dio dio;
  LocationDatasources({
    required this.dio,
  }) {
    dio.interceptors.add(
      InterCeptor(),
    );
  }

  @override
  Future<List<LocationModel>> getAllLocation(String? name) async {
    String url = '';
    if (name != null) {
      url = '$baseUrl/location/?name=$name';
    } else {
      url = '$baseUrl/location';
    }
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<LocationModel> locations = (responce.data['results'] as List)
          .map(
            (item) => LocationModel.fromJson(item),
          )
          .toList();

      return locations;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<LocationModel>> getFilterLocation(String urls) async {
    final url = '$baseUrl/location/?$urls';

    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<LocationModel> locations = (responce.data['results'] as List)
          .map(
            (item) => LocationModel.fromJson(item),
          )
          .toList();
      return locations;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<LocationModel>> getMultiLocation(List<int> idies) async {
    final url = '$baseUrl/location/$idies';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<LocationModel> locations = (responce.data['results'] as List)
          .map(
            (item) => LocationModel.fromJson(item),
          )
          .toList();
      return locations;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<LocationModel> getSingleLocation(int id) async {
    final url = '$baseUrl/location/$id';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      return LocationModel.fromJson(responce.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<Character>> getCharacters(List<String> urls) async {
    List<Character> characters = [];
    for (var element in urls) {
      final responce = await dio.get(element);
      if (responce.statusCode == 200) {
        characters.add(
          Character.fromJson(
            responce.data,
          ),
        );
      } else {
        throw ServerException();
      }
    }
    return characters;
  }
}

class InterCeptor extends InterceptorsWrapper {}
