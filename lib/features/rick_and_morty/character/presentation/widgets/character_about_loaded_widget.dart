import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_about_widget.dart';

class CharacterAboutLoadedWidget extends StatelessWidget {
  final Character character;
  const CharacterAboutLoadedWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                padding: const EdgeInsets.all(AppDimens.PADDING_10),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AdaptiveTheme.of(context).mode ==
                              AdaptiveThemeMode.dark
                          ? Colors.white
                          : Colors.black),
                  borderRadius: BorderRadius.circular(
                    AppDimens.BORDER_RADIUS_20,
                  ),
                ),
                child: Column(
                  children: [
                    CharacterAboutWidget(
                        firstText: character.gender, secondText: 'Gender'),
                    CharacterAboutWidget(
                        firstText: character.species, secondText: 'Species'),
                    CharacterAboutWidget(
                        firstText: character.status, secondText: 'Status'),
                    const CharacterAboutWidget(
                        firstText: 'qwerty', secondText: 'Episode'),
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
}
