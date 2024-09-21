import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/character_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CharacterInfoWidget extends StatelessWidget {
  final Character character;
  const CharacterInfoWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        context.read<CharacterBloc>().add(
              CharacterEvent.getSingleCharacters(id: character.id),
            );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CharacterAboutScreen();
            },
          ),
        );
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
        ),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(character.image),
                ),
              ),
            ),
            Text(
              character.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '${character.status} ${character.species}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
