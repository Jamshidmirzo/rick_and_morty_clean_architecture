import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/pages/character_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/pages/episode_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/pages/location_screen.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
