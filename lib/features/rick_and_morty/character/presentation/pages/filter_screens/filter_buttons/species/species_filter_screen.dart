import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/species/species_filter/alien_species_filter.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/species/species_filter/human_species_filter.dart';

class SpeciesFilterScreen extends StatefulWidget {
  const SpeciesFilterScreen({super.key});

  @override
  State<SpeciesFilterScreen> createState() => _SpeciesFilterScreenState();
}

class _SpeciesFilterScreenState extends State<SpeciesFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: speciesConstant.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            for (int i = 0; i < speciesConstant.length; i++)
              Tab(
                text: speciesConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: const[
         HumanSpeciesFilter(data: 'Human'),
         AlienSpeciesFilter(data: 'Alien')
      ]),
    );
  }
}
