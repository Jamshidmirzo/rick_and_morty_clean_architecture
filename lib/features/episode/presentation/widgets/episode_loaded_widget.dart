import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/episode/presentation/widgets/episode_widget.dart';

class EpisodeLoadedWidget extends StatelessWidget {
  final List<Episode> episodes;
  const EpisodeLoadedWidget({super.key, required this.episodes});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      padding: const EdgeInsets.all(20),
      itemCount: episodes.length,
      itemBuilder: (context, index) {
        final episode = episodes[index];
        return EpisodeWidget(episode: episode);
      },
    );
  }
}
