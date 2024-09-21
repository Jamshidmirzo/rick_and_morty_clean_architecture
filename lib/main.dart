import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/character_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context) => sl<CharacterBloc>()
        ..add(
          const CharacterEvent.getCharacters(),
        ),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CharacterScreen(),
      ),
    );
  }
}
