import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/episode/domain/entities/episode_entity.dart';
import 'package:rick_and_morty/features/episode/presentation/pages/episode_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class EpisodeWidget extends StatelessWidget {
  final EpisodeEntity episode;
  const EpisodeWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EpisodeAboutScreen(
                  id: episode.id, urls: episode.characters);
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
          image: const DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.5,
            image: AssetImage(
              'assets/images/morty.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              episode.name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
            Text(
              episode.episode,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
