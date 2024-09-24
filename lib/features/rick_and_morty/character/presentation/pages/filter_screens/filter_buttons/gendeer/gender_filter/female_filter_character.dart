import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_info_widget.dart';

class FemaleFilterCharacter extends StatefulWidget {
  final String data;
  const FemaleFilterCharacter({super.key, required this.data});

  @override
  State<FemaleFilterCharacter> createState() => _FemaleFilterCharacterState();
}

class _FemaleFilterCharacterState extends State<FemaleFilterCharacter> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
          CharacterEvent.getFilterCharacters(newUrl: 'gender=${widget.data}'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state.status == Status.ERROR) {
          return Center(
            child: Text(state.message ?? "Get smth wrong"),
          );
        }
        if (state.status == Status.LOADING) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.status == Status.SUCCESS) {
          final characters = state.character;
          return characters == null
              ? Center(
                  child: Text(state.message ?? "Get smth wrong"),
                )
              : GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.5),
                  itemCount: state.character!.length,
                  itemBuilder: (context, index) {
                    final character = state.character![index];
                    return CharacterInfoWidget(character: character);
                  },
                );
        }
        return Container();
      },
    ));
  }
}
