import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/location/presentation/pages/filter_screen/dimension/dimension_filter_location_screen.dart';
import 'package:rick_and_morty/features/location/presentation/pages/filter_screen/type/type_location_filter_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LocationFilterScreen extends StatefulWidget {
  const LocationFilterScreen({super.key});

  @override
  State<LocationFilterScreen> createState() => _LocationFilterScreenState();
}

class _LocationFilterScreenState extends State<LocationFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _getButton('Type', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TypeLocationFilterScreen();
                  },
                ),
              );
            }),
            _getButton('Dimension', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DimensionFilterLocationScreen();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  _getButton(String name, Function()? onTap) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          name,
          style: const TextStyle(fontSize: 20),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
        ),
      ),
    );
  }
}
