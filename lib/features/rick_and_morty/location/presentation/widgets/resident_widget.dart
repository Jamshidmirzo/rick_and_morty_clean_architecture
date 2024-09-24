import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/character_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ResidentWidget extends StatelessWidget {
  final Character character;
  const ResidentWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        context
            .read<CharacterBloc>()
            .add(CharacterEvent.getSingleCharacters(id: character.id));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CharacterAboutScreen(
                id: character.id,
              );
            },
          ),
        );
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(character.image),
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
