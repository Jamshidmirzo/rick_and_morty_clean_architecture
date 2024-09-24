import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/gendeer/gender_filter/female_filter_character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/gendeer/gender_filter/male_filter_character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/gendeer/gender_filter/unknown_gender_filter_character.dart';

class GenderFilterScreen extends StatefulWidget {
  const GenderFilterScreen({super.key});

  @override
  State<GenderFilterScreen> createState() => _GenderFilterScreenState();
}

class _GenderFilterScreenState extends State<GenderFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: genderConstant.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            for (int i = 0; i < genderConstant.length; i++)
              Tab(
                text: genderConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: const [
        MaleFilterCharacter(data: 'Male'),
        FemaleFilterCharacter(data: 'Female'),
        UnknownGenderFilterCharacter(data: 'Unknown')
      ]),
    );
  }
}
