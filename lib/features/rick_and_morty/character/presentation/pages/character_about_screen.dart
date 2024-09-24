import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_about_widget.dart';

class CharacterAboutScreen extends StatefulWidget {
  final int id;
  const CharacterAboutScreen({
    required this.id,
    super.key,
  });

  @override
  State<CharacterAboutScreen> createState() => _CharacterAboutScreenState();
}

class _CharacterAboutScreenState extends State<CharacterAboutScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() {
    context.read<CharacterBloc>().add(
          CharacterEvent.getSingleCharacters(id: widget.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character Info"),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(
                state.message ?? "Smth get woring",
              ),
            );
          }
          if (state.status == Status.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == Status.SUCCESS) {
            final character = state.singleCharacter;
            return character == null
                ? const Center(
                    child: Text("error when getting character"),
                  )
                : Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(character.image),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppDimens.PADDING_20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              character.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.all(AppDimens.PADDING_10),
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(
                                  AppDimens.BORDER_RADIUS_20,
                                ),
                              ),
                              child: Column(
                                children: [
                                  CharacterAboutWidget(
                                      firstText: character.gender,
                                      secondText: 'Gender'),
                                  CharacterAboutWidget(
                                      firstText: character.species,
                                      secondText: 'Species'),
                                  CharacterAboutWidget(
                                      firstText: character.status,
                                      secondText: 'Status'),
                                  const CharacterAboutWidget(
                                      firstText: 'qwerty',
                                      secondText: 'Episode'),
                                  CharacterAboutWidget(
                                      firstText: character.location.name,
                                      secondText: 'Location'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
          }
          return Container();
        },
      ),
    );
  }
}
