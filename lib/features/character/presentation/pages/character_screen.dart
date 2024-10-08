import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/error_widget.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/core/widgets/search_widget.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/character/presentation/pages/filter_character_screen.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_loaded_widget.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('charc')),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1)).then((_) {
            context.read<CharacterBloc>().add(
                  const CharacterEvent.getCharacters(null),
                );
            textController.clear();
          });
        },
        child: Column(
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
                    return const LoadingWidget();
                  }
                  if (state.status == Status.SUCCESS) {
                    final characters = state.character;
                    return characters != null
                        ? CharacterLoadedWidget(character: characters)
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
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
          const CharacterEvent.getCharacters(null),
        );
  }

  onChaged(String value) {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      context.read<CharacterBloc>().add(CharacterEvent.getCharacters(value));
    });
  }
}
