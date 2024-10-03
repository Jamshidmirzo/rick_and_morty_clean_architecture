import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_cubit.dart';
import '../../features/character/presentation/bloc/bloc/character_bloc.dart';
import '../../features/episode/presentation/blocs/bloc/episode_bloc.dart';
import '../../features/location/presentation/blocs/bloc/location_bloc.dart';
import '../../service_locator.dart';

class BlocScope extends StatelessWidget {
  final Widget child;
  const BlocScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => sl<CharacterBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<LocationBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<EpisodeBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<LocalCubit>()..getLocale(),
      ),
    ], child: child);
  }
}
