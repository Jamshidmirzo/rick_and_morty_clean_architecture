import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/bottom_nav_bar.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/service_locator.dart';
import 'service_locator.dart' as di;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<CharacterBloc>()
            ..add(
              const CharacterEvent.getCharacters(null),
            ),
        ),
        BlocProvider(create: (context) => sl<LocationBloc>()),
        BlocProvider(create: (context) => sl<EpisodeBloc>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavBar(),
      ),
    );
  }
}
