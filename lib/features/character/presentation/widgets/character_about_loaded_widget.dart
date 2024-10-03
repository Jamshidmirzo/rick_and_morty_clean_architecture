import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';
import 'package:rick_and_morty/core/widgets/photo_widget.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_about_widget.dart';

class CharacterAboutLoadedWidget extends StatelessWidget {
  final CharacterEntity character;
  const CharacterAboutLoadedWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhotoWidget(url: NetworkImage(character.image)),
        20.sH(),
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
              10.sH(),
              Container(
                padding: const EdgeInsets.all(AppDimens.PADDING_10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Brightness.dark ==
                              WidgetsBinding.instance.platformDispatcher
                                  .platformBrightness
                          ? Colors.white
                          : Colors.black),
                  borderRadius: BorderRadius.circular(
                    AppDimens.BORDER_RADIUS_20,
                  ),
                ),
                child: Column(
                  children: [
                    CharacterAboutWidget(
                        firstText: character.gender,
                        secondText: context.tr('gender')),
                    CharacterAboutWidget(
                        firstText: character.species,
                        secondText: context.tr('species')),
                    CharacterAboutWidget(
                        firstText: character.status,
                        secondText: context.tr('status')),
                    CharacterAboutWidget(
                        firstText: character.location.name,
                        secondText: context.tr('location')),
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
