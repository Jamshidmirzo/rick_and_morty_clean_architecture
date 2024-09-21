import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/datasource/character_datasource.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/repository/character_repository.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_all_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_multi_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_single_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // final shared = await SharedPreferences.getInstance();

  sl.registerFactory(() => CharacterBloc(
      getAllCharactersUsecases: sl<GetAllCharactersUsecases>(),
      getMultiCharacters: sl<GetMultiCharactersUsecases>(),
      getSingleCharactersUsecases: sl<GetSingleCharactersUsecases>()));

  sl.registerFactory(() => GetAllCharactersUsecases(
      characterRepository: sl<CharacterRepositoryImpl>()));

  sl.registerFactory(
    () => GetMultiCharactersUsecases(
      characterRepository: sl<CharacterRepositoryImpl>(),
    ),
  );
   sl.registerFactory(
    () => GetSingleCharactersUsecases(
      characterRepository: sl<CharacterRepositoryImpl>(),
    ),
  );

  sl.registerFactory(() =>
      CharacterRepositoryImpl(characterDatasource: sl<CharacterDatasource>()));
  sl.registerFactory(
    () => CharacterDatasource(
      dio: Dio(),
    ),
  );
}
