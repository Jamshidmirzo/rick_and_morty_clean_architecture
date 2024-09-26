// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/domain/usecases/get_all_location_usecases.dart';
import 'package:rick_and_morty/features/location/domain/usecases/get_characters_usecases.dart';
import 'package:rick_and_morty/features/location/domain/usecases/get_filter_locations_usecases.dart';
import 'package:rick_and_morty/features/location/domain/usecases/get_multi_location_usecases.dart';
import 'package:rick_and_morty/features/location/domain/usecases/get_single_location.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  GetAllLocationUsecases getAllLocationUsecases;
  GetMultiLocationUsecases getMultiLocationUsecases;
  GetSingleLocation getSingleLocationUsecases;
  GetCharactersUsecases getCharactersUsecases;
  GetFilterLocationsUsecases getFilterLocationsUsecases;
  LocationBloc({
    required this.getFilterLocationsUsecases,
    required this.getCharactersUsecases,
    required this.getAllLocationUsecases,
    required this.getMultiLocationUsecases,
    required this.getSingleLocationUsecases,
  }) : super(LocationState()) {
    on<_getAllLocation>(_getAll);
    on<_getSingleLocation>(_getSingle);
    on<_getMultiLocation>(_getMulti);
    on<_getCharacters>(_getCharacter);
    on<_getCharactersAndLocations>(_getCharactersAndLocation);
    on<_getFilterLocation>(_getFilterLocations);
  }

  Future<void> _getFilterLocations(
      _getFilterLocation event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce =
        await getFilterLocationsUsecases(FilterLocations(urls: event.url));
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, locations: data),
        );
      },
    );
  }

  Future<void> _getCharactersAndLocation(
      _getCharactersAndLocations event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce =
        await getCharactersUsecases(GetCharacterParamas(urls: event.ulrs));
    final responce2 =
        await getSingleLocationUsecases(SingleLocationParams(id: event.id));
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, characters: data),
        );
      },
    );

    responce2.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, singleLocation: data),
        );
      },
    );
  }

  Future<void> _getCharacter(
      _getCharacters event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce =
        await getCharactersUsecases(GetCharacterParamas(urls: event.ulrs));
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, characters: data),
        );
      },
    );
  }

  Future<void> _getAll(
      _getAllLocation event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce = await getAllLocationUsecases(
      AllLocation(name: event.name),
    );
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, locations: data),
        );
      },
    );
  }

  Future<void> _getSingle(
      _getSingleLocation event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce = await getSingleLocationUsecases(
      SingleLocationParams(id: event.id),
    );
    responce.fold(
      (error) {
        emit(state.copyWith(
            status: Status.ERROR, failure: _failureMessage(error)));
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, singleLocation: data),
        );
      },
    );
  }

  Future<void> _getMulti(
      _getMultiLocation event, Emitter<LocationState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce = await getMultiLocationUsecases(
      MultiLocationParams(idies: event.idies),
    );
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, failure: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, locations: data),
        );
      },
    );
  }

  String _failureMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Error';
    } else if (failure is CacheFailure) {
      return "Cache Error";
    } else {
      return 'Something went wrong in location fetching';
    }
  }
}
