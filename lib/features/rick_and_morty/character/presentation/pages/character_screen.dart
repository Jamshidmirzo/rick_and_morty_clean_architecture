import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/error_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/search_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_character_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_loaded_widget.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
          const CharacterEvent.getCharacters(null),
        );
  }

  onChaged(String value) {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      context.read<CharacterBloc>().add(
            CharacterEvent.getCharacters(value),
          );
    });
  }

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SearchWidget(
              onTapContainer: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FilterCharacterScreen(),
                    ),
                  ),
              onChanged: onChaged,
              textController: textController),
          Expanded(
            child: BlocBuilder<CharacterBloc, CharacterState>(
              builder: (context, state) {
                if (state.status == Status.ERROR) {
                  return ErrorWidgetRick(message: state.message);
                }
                if (state.status == Status.LOADING) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.status == Status.SUCCESS) {
                  return state.character != null
                      ? CharacterLoadedWidget(character: state.character!)
                      : const Center(
                          child: Text("Smth getn worng"),
                        );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
