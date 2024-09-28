// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rick_and_morty/features/location/data/model/location_model.dart';

class LocationModelEntity {
  int id;
  String name;
  String type;
  String dimension;
  List<String> residents;
  String url;
  String created;
  LocationModelEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });
}

extension LocationMapper on LocationModelEntity {
  LocationModel toLocation() {
    return LocationModel(
        id: id,
        name: name,
        type: type,
        dimension: dimension,
        residents: residents,
        url: url,
        created: created);
  }
}
