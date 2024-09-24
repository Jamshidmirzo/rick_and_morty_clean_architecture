import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_character_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_info_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

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
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) => onChaged(value),
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FilterCharacterScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple.shade300),
                    child: const Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        
          Expanded(
            child: BlocBuilder<CharacterBloc, CharacterState>(
              builder: (context, state) {
                if (state.status == Status.ERROR) {
                  return Center(
                    child: Text(
                      state.message ?? 'Smth get wrong',
                    ),
                  );
                }
                if (state.status == Status.LOADING) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.status == Status.SUCCESS) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
            ),
          ),
        ],
      ),
    );
  }
}
