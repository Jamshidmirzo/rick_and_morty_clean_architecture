// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/data/repositories/location_repositories.dart';

class GetMultiLocationUsecases extends Usecase<List<LocationModel>, MultiLocationParams> {
  LocationRepositoriesImpl locationRepositoriesImpl;
   GetMultiLocationUsecases({
    required this.locationRepositoriesImpl,
  });
  @override
  Future<Either<Failure, List<LocationModel>>> call(MultiLocationParams params) {
    return locationRepositoriesImpl.getMultiLocation(params.idies);
  }
}

class MultiLocationParams {
  List<int> idies;
  MultiLocationParams({
    required this.idies,
  });
}
