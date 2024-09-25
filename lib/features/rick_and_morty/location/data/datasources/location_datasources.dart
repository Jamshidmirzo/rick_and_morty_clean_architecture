// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/usecase/exception.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/model/location_model.dart';

class LocationDatasources {
  Dio dio;
  LocationDatasources({
    required this.dio,
  });

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
            (item) => LocationModel.fromMap(item),
          )
          .toList();

      for (var element in locations) {
        locationTypeConstant.add(element.type);
        locationDimensionConstant.add(element.dimension);
      }
      return locations;
    } else {
      throw ServerException();
    }
  }

  Future<List<LocationModel>> getFilterLocation(String urls) async {
    final url = '$baseUrl/location/?$urls';
  
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<LocationModel> locations = (responce.data['results'] as List)
          .map(
            (item) => LocationModel.fromMap(item),
          )
          .toList();
      return locations;
    } else {
      throw ServerException();
    }
  }

  Future<List<LocationModel>> getMultiLocation(List<int> idies) async {
    final url = '$baseUrl/location/$idies';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      List<LocationModel> locations = (responce.data['results'] as List)
          .map(
            (item) => LocationModel.fromMap(item),
          )
          .toList();
      return locations;
    } else {
      throw ServerException();
    }
  }

  Future<LocationModel> getSingleLocation(int id) async {
    final url = '$baseUrl/location/$id';
    final responce = await dio.get(url);
    if (responce.statusCode == 200) {
      return LocationModel.fromMap(responce.data);
    } else {
      throw ServerException();
    }
  }

  Future<List<Character>> getCharacters(List<String> urls) async {
    List<Character> characters = [];
    for (var element in urls) {
      final responce = await dio.get(element);
      if (responce.statusCode == 200) {
        characters.add(
          Character.fromMap(responce.data),
        );
      } else {
        throw ServerException();
      }
    }
    return characters;
  }
}
