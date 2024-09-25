import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/character_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/pages/episode_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/pages/location_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/settings/presentation/pages/settingd_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List screens = [
    const CharacterScreen(),
    const LocationScreen(),
    const EpisodeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.red,
        selectedItemColor: Colors.amber,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/rick.png',
                width: 40,
                height: 40,
                color: currentIndex == 0 ? Colors.amber : Colors.red,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.control_camera_sharp), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
              ),
              label: ''),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
