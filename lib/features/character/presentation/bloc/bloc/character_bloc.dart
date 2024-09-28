// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/domain/usecases/get_all_characters_usecases.dart';
import 'package:rick_and_morty/features/character/domain/usecases/get_filter_character_usecase.dart';
import 'package:rick_and_morty/features/character/domain/usecases/get_multi_characters_usecases.dart';
import 'package:rick_and_morty/features/character/domain/usecases/get_single_characters_usecases.dart';

part 'character_bloc.freezed.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  GetAllCharactersUsecases getAllCharactersUsecases;
  GetMultiCharactersUsecases getMultiCharacters;
  GetSingleCharactersUsecases getSingleCharactersUsecases;
  GetFilterCharacterUsecase getFilterCharacterUsecase;
  CharacterBloc(
      {required this.getAllCharactersUsecases,
      required this.getFilterCharacterUsecase,
      required this.getMultiCharacters,
      required this.getSingleCharactersUsecases})
      : super(
          CharacterState(),
        ) {
    on<_getCharacters>(_getCharacter);
    on<_getSingleCharacters>(_getSingleCharacter);
    on<_getMultiCharacters>(_getMultiCharacter);
    on<_getFilterCharacters>(_getFilter);
  }

  Future<void> _getFilter(
      _getFilterCharacters event, Emitter<CharacterState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce = await getFilterCharacterUsecase(
        FilterCharacterParams(newUrl: event.newUrl));
    responce.fold(
      (error) {
        emit(
          state.copyWith(status: Status.ERROR, message: _failureMessage(error)),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, character: data),
        );
      },
    );
  }

  Future<void> _getCharacter(
      _getCharacters event, Emitter<CharacterState> emit) async {
    emit(state.copyWith(status: Status.LOADING));
    final responce = await getAllCharactersUsecases(
      GetAllCharacterParams(name: event.name),
    );
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.ERROR,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          status: Status.SUCCESS,
          character: data,
        ),
      );
    });
  }

  Future<void> _getSingleCharacter(
      _getSingleCharacters event, Emitter<CharacterState> emit) async {
    emit(
      state.copyWith(status: Status.LOADING),
    );

    final responce = await getSingleCharactersUsecases(
      SingleCharacter(id: event.id),
    );
    responce.fold(
      (error) {
        emit(
          state.copyWith(
            status: Status.ERROR,
            message: _failureMessage(error),
          ),
        );
      },
      (data) {
        emit(state.copyWith(
          status: Status.SUCCESS,
          singleCharacter: data,
        ));
      },
    );
  }

  Future<void> _getMultiCharacter(
      _getMultiCharacters event, Emitter<CharacterState> emit) async {
    emit(state.copyWith(status: Status.LOADING));

    final responce = await getMultiCharacters(
      MultiCharacter(params: event.idies),
    );
    responce.fold(
      (error) {
        emit(
          state.copyWith(
            status: Status.ERROR,
            message: _failureMessage(error),
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(status: Status.SUCCESS, character: data),
        );
      },
    );
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return 'Server Error';
      case CacheFailure():
        return 'Cache Error';
      default:
        return 'Something went wrong';
    }
  }
}
