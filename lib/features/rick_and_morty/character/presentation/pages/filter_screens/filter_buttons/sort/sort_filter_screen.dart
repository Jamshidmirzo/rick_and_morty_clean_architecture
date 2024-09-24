import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/sort/status_filter/alive_filter_character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/sort/status_filter/dead_filter_character.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/filter_screens/filter_buttons/sort/status_filter/unknown_filter_character.dart';

class SortFilterScreen extends StatefulWidget {
  const SortFilterScreen({super.key});

  @override
  State<SortFilterScreen> createState() => _SortFilterScreenState();
}

class _SortFilterScreenState extends State<SortFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  String currenTab = statusConstant.toList().first;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: statusConstant.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            for (int i = 0; i < statusConstant.length; i++)
              Tab(
                text: statusConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          AliveFilterCharacter(data: 'Alive'),
          UnknownFilterCharacter(data: 'Unknown'),
          DeadFilterCharacter(data: 'Dead')
        ],
      ),
    );
  }
}
