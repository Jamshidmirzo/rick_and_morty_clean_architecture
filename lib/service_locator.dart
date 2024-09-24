import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/datasource/character_datasource.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/repository/character_repository.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_all_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_filter_character_usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_multi_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/domain/usecases/get_single_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/datasources/episode_datasource.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/repositories/episode_repositries.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/usecases/get_all_episode_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/usecases/get_character_episode_usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/usecases/get_filter_episode_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/usecases/get_multi_episode_usecase.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/domain/usecases/get_single_episode_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/datasources/location_datasources.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/repositories/location_repositories.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/domain/usecases/get_all_location_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/domain/usecases/get_characters_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/domain/usecases/get_filter_locations_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/domain/usecases/get_multi_location_usecases.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/domain/usecases/get_single_location.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // final shared = await SharedPreferences.getInstance();
  sl.registerFactory(() => CharacterBloc(
      getFilterCharacterUsecase: sl<GetFilterCharacterUsecase>(),
      getAllCharactersUsecases: sl<GetAllCharactersUsecases>(),
      getMultiCharacters: sl<GetMultiCharactersUsecases>(),
      getSingleCharactersUsecases: sl<GetSingleCharactersUsecases>()));
  sl.registerFactory(() => GetFilterCharacterUsecase(
      characterRepositoryImpl: sl<CharacterRepositoryImpl>()));

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

  sl.registerFactory(() => LocationBloc(
      getFilterLocationsUsecases: sl<GetFilterLocationsUsecases>(),
      getCharactersUsecases: sl<GetCharactersUsecases>(),
      getAllLocationUsecases: sl<GetAllLocationUsecases>(),
      getMultiLocationUsecases: sl<GetMultiLocationUsecases>(),
      getSingleLocationUsecases: sl<GetSingleLocation>()));
  sl.registerFactory(() => GetFilterLocationsUsecases(
      locationRepositoriesImpl: sl<LocationRepositoriesImpl>()));
  sl.registerFactory(() => GetAllLocationUsecases(
      locationRepositoriesImpl: sl<LocationRepositoriesImpl>()));
  sl.registerFactory(() => GetSingleLocation(
      locationRepositoriesImpl: sl<LocationRepositoriesImpl>()));
  sl.registerFactory(() => GetMultiLocationUsecases(
      locationRepositoriesImpl: sl<LocationRepositoriesImpl>()));
  sl.registerFactory(() => GetCharactersUsecases(
      locationRepositoriesImpl: sl<LocationRepositoriesImpl>()));
  sl.registerFactory(() =>
      LocationRepositoriesImpl(locationDatasources: sl<LocationDatasources>()));

  sl.registerFactory(() => LocationDatasources(dio: Dio()));

  sl.registerFactory(
    () => EpisodeBloc(
        sl<GetFilterEpisodeUsecases>(),
        sl<GetAllEpisodeUsecases>(),
        sl<GetCharacterEpisodeUsecase>(),
        sl<GetMultiEpisodeUsecase>(),
        sl<GetSingleEpisodeUsecases>()),
  );
  sl.registerFactory(
    () => GetFilterEpisodeUsecases(
      episodeRepositriesImpl: sl<EpisodeRepositriesImpl>(),
    ),
  );
  sl.registerFactory(
    () => GetCharacterEpisodeUsecase(
      episodeRepositriesImpl: sl<EpisodeRepositriesImpl>(),
    ),
  );

  sl.registerFactory(() => GetAllEpisodeUsecases(
      episodeRepositriesImpl: sl<EpisodeRepositriesImpl>()));

  sl.registerFactory(() => GetSingleEpisodeUsecases(
      episodeRepositriesImpl: sl<EpisodeRepositriesImpl>()));

  sl.registerFactory(() => GetMultiEpisodeUsecase(
      episodeRepositriesImpl: sl<EpisodeRepositriesImpl>()));

  sl.registerFactory(
      () => EpisodeRepositriesImpl(episodeDatasource: sl<EpisodeDatasource>()));

  sl.registerFactory(() => EpisodeDatasource(dio: Dio()));
}
