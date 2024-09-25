// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/episode/domain/usecases/get_all_episode_usecases.dart';
import 'package:rick_and_morty/features/episode/domain/usecases/get_character_episode_usecase.dart';
import 'package:rick_and_morty/features/episode/domain/usecases/get_filter_episode_usecases.dart';
import 'package:rick_and_morty/features/episode/domain/usecases/get_multi_episode_usecase.dart';
import 'package:rick_and_morty/features/episode/domain/usecases/get_single_episode_usecases.dart';

part 'episode_bloc.freezed.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  GetAllEpisodeUsecases getAllEpisodeUsecases;
  GetCharacterEpisodeUsecase getCharacterEpisodeUsecase;
  GetMultiEpisodeUsecase getMultiEpisodeUsecase;
  GetSingleEpisodeUsecases getSingleEpisodeUsecases;
  GetFilterEpisodeUsecases getFilterEpisodeUsecases;
  EpisodeBloc(
    this.getFilterEpisodeUsecases,
    this.getAllEpisodeUsecases,
    this.getCharacterEpisodeUsecase,
    this.getMultiEpisodeUsecase,
    this.getSingleEpisodeUsecases,
  ) : super(EpisodeState(status: Status.LOADING)) {
    on<EpisodeEvent>((event, emit) {});
    on<_getEpisodes>(_getAll);
    on<_getSingleEpisodes>(_getSingle);
    on<_getMultiEpisodes>(_getMulti);
    on<_getResidentsEpisodes>(_getResidence);
    on<_getResidentsAndLocationEpisodes>(_getResidenceAndLocation);
    on<_getFilterEpisodes>(_getFilter);
  }

  Future<void> _getFilter(
      _getFilterEpisodes event, Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce =
        await getFilterEpisodeUsecases(FilterEpisode(urls: event.urls));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, episodes: data),
      );
    });
  }

  Future<void> _getResidenceAndLocation(_getResidentsAndLocationEpisodes event,
      Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce =
        await getSingleEpisodeUsecases(SingleEpisodeParams(id: event.id));
    final responce2 = await getCharacterEpisodeUsecase(
        GetCharacterEpisodeParams(urls: event.urls));

    responce2.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, characters: data),
      );
    });
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, singleEpisodes: data),
      );
    });
  }

  Future<void> _getAll(_getEpisodes event, Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce =
        await getAllEpisodeUsecases(AllEpisodeParams(name: event.name));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, episodes: data),
      );
    });
  }

  Future<void> _getSingle(
      _getSingleEpisodes event, Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce =
        await getSingleEpisodeUsecases(SingleEpisodeParams(id: event.id));

    responce.fold((error) {
      emit(state.copyWith(
          status: Status.ERROR, failure: _failureMessage(error)));
    }, (data) {
      emit(state.copyWith(status: Status.SUCCESS, singleEpisodes: data));
    });
  }

  Future<void> _getMulti(
      _getMultiEpisodes event, Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce =
        await getMultiEpisodeUsecase(MultiEpisodeParams(idies: event.idies));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, episodes: data),
      );
    });
  }

  Future<void> _getResidence(
      _getResidentsEpisodes event, Emitter<EpisodeState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce = await getCharacterEpisodeUsecase(
        GetCharacterEpisodeParams(urls: event.urls));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          failure: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(status: Status.SUCCESS, characters: data),
      );
    });
  }
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
