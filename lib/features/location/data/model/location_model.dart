import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required List<String> residents,
    required String url,
    required String created,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

extension LocationMapper on LocationModel {
  LocationModelEntity toEntity() {
    return LocationModelEntity(
        id: id,
        name: name,
        type: type,
        dimension: dimension,
        residents: residents,
        url: url,
        created: created);
  }
}
