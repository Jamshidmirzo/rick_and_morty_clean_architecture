import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_about_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/resident_widget.dart';

class EpisodeAboutLoadedWidget extends StatelessWidget {
  final Episode episode;
  final List<Character> characters;
  const EpisodeAboutLoadedWidget({super.key,required this.characters,required this.episode});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/episode.png')),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Column(
              children: [
                EpisodeAboutWidget(firstText: episode.name, secondText: 'Name'),
                EpisodeAboutWidget(
                    firstText: _getDate(episode.created),
                    secondText: 'Created'),
                EpisodeAboutWidget(
                    firstText: episode.air_date, secondText: 'Air Date'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
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

  String _getDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return '${dateTime.day}-${dateTime.month}-${dateTime.year}';
  }
}
