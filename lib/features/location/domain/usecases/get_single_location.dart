// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecase/usecase.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/data/repositories/location_repositories.dart';

class GetSingleLocation extends Usecase<LocationModel, SingleLocationParams> {
  LocationRepositoriesImpl locationRepositoriesImpl;
  GetSingleLocation({
    required this.locationRepositoriesImpl,
  });
  @override
  Future<Either<Failure, LocationModel>> call(SingleLocationParams params) {
    return locationRepositoriesImpl.getSingleLocation(params.id);
  }
}


class SingleLocationParams {
  int id;
  SingleLocationParams({
    required this.id,
  });
}
