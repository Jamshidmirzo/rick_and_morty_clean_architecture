import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/gendeer/gender_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/sort/sort_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/species/species_filter_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FilterCharacterScreen extends StatelessWidget {
  const FilterCharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _getButtons('Filter by sort', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SortFilterScreen();
                  },
                ),
              );
            }),
            _getButtons('Filter by species', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SpeciesFilterScreen();
                  },
                ),
              );
            }),
            _getButtons('Filter by gender', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const GenderFilterScreen();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  _getButtons(String text, Function() onTap) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_sharp,
        ),
      ),
    );
  }
}
