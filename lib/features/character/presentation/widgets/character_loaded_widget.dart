import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_info_widget.dart';

class CharacterLoadedWidget extends StatelessWidget {
  final List<CharacterEntity> character;
  const CharacterLoadedWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppDimens.PADDING_20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.5),
      itemCount: character.length,
      itemBuilder: (context, index) {
        final character2 = character[index];
        return CharacterInfoWidget(character: character2);
      },
    );
  }
}
