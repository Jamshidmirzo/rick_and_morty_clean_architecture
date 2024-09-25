import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/character/presentation/pages/character_about_screen.dart';
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
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(character.image),
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
