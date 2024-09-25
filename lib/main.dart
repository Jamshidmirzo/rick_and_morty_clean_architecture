import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/widgets/bottom_nav_bar.dart';
import 'package:rick_and_morty/features/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/theme_cubit.dart';
import 'package:rick_and_morty/service_locator.dart';
import 'service_locator.dart' as di;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _themeCubit = ThemeCubit();
 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<CharacterBloc>()),
        BlocProvider(create: (context) => sl<LocationBloc>()),
        BlocProvider(create: (context) => sl<EpisodeBloc>()),
        BlocProvider.value(value: _themeCubit),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            theme: isDarkMode,
            debugShowCheckedModeBanner: false,
            home: const BottomNavBar(),
          );
        },
      ),
    );
  }

   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final currentBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    _themeCubit.changeTheme(currentBrightness);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    final Brightness newBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    _themeCubit.changeTheme(newBrightness);
  }

}
