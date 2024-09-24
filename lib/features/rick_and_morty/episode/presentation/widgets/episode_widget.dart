import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/data/model/episode.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/pages/episode_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class EpisodeWidget extends StatelessWidget {
  final Episode episode;
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
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.amber
            // image: const DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(
            //     'assets/images/episode.png',
            //   ),
            // ),
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
