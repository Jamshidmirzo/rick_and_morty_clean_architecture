// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/repositories/location_repositories.dart';

class GetAllLocationUsecases extends Usecase<List<LocationModel>, AllLocation> {
  LocationRepositoriesImpl locationRepositoriesImpl;
  GetAllLocationUsecases({
    required this.locationRepositoriesImpl,
  });
  @override
  Future<Either<Failure, List<LocationModel>>> call(AllLocation params) {
    return locationRepositoriesImpl.getAllLocation(params.name);
  }
}

class AllLocation {
  String? name;
  AllLocation({
    this.name,
  });
}
