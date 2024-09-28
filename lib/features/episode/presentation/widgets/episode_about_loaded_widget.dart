import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';
import 'package:rick_and_morty/core/widgets/date_widget.dart';
import 'package:rick_and_morty/core/widgets/photo_widget.dart';
import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';
import 'package:rick_and_morty/features/episode/presentation/widgets/episode_about_widget.dart';
import 'package:rick_and_morty/features/location/presentation/widgets/resident_widget.dart';


class EpisodeAboutLoadedWidget extends StatelessWidget {
  final EpisodeEntity episode;
  final List<CharacterEntity> characters;
  const EpisodeAboutLoadedWidget(
      {super.key, required this.characters, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PhotoWidget(
          url: AssetImage('assets/images/episode.png'),
        ),
        20.sH(),
        Padding(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
              border: Border.all(
                color: Brightness.dark ==
                        WidgetsBinding
                            .instance.platformDispatcher.platformBrightness
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            child: Column(
              children: [
                EpisodeAboutWidget(firstText: episode.name, secondText: 'Name'),
                EpisodeAboutWidget(
                    firstText: GetDate.getDate(episode.created),
                    secondText: 'Created'),
                EpisodeAboutWidget(
                    firstText: episode.air_date, secondText: 'Air Date'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: AppDimens.PADDING_20),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return ResidentWidget(character: character);
            },
          ),
        ),
      ],
    );
  }
}
