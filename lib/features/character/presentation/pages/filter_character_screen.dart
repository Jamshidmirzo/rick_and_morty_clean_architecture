import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/widgets/buttons_for_filter.dart';
import 'package:rick_and_morty/features/character/presentation/pages/filter_screens/gendeer/gender_filter_screen.dart';
import 'package:rick_and_morty/features/character/presentation/pages/filter_screens/sort/sort_filter_screen.dart';
import 'package:rick_and_morty/features/character/presentation/pages/filter_screens/species/species_filter_screen.dart';

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
            ButtonsForFilter(
                text: 'Filter by sort',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SortFilterScreen(),
                    ),
                  );
                }),
            ButtonsForFilter(
              text: 'Filter by species',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SpeciesFilterScreen()),
                );
              },
            ),
            ButtonsForFilter(
              text: 'Filter by gender',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GenderFilterScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
