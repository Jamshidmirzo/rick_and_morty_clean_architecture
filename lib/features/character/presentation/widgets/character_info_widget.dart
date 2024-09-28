import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/presentation/pages/character_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CharacterInfoWidget extends StatelessWidget {
  final CharacterEntity character;
  const CharacterInfoWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
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
        decoration: BoxDecoration(
          border: Border.all(
            color: Brightness.dark ==
                    WidgetsBinding
                        .instance.platformDispatcher.platformBrightness
                ? Colors.white
                : Colors.black,
          ),
          borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
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
