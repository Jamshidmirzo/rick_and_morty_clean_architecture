// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/location/data/repositories/location_repositories.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';

class GetAllLocationUsecases extends Usecase<List<LocationModelEntity>, AllLocation> {
  LocationRepositoriesImpl locationRepositoriesImpl;
  GetAllLocationUsecases({
    required this.locationRepositoriesImpl,
  });
  @override
  Future<Either<Failure, List<LocationModelEntity>>> call(AllLocation params) {
    return locationRepositoriesImpl.getAllLocation(params.name);
  }
}

class AllLocation {
  String? name;
  AllLocation({
    this.name,
  });
}
