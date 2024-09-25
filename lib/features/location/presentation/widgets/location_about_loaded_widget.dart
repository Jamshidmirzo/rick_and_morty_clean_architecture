// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/character/data/model/character.dart';
import 'package:rick_and_morty/features/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/location/presentation/widgets/location_about_widget.dart';
import 'package:rick_and_morty/features/location/presentation/widgets/resident_widget.dart';

class LocationAboutLoadedWidget extends StatelessWidget {
  final LocationModel location;
  final List<Character> character;
  const LocationAboutLoadedWidget({
    super.key,
    required this.location,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://cdn.vectorstock.com/i/500p/82/99/no-image-available-like-missing-picture-vector-43938299.jpg'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    LocationAboutWidget(
                        firstText: location.name, secondText: "Name"),
                    LocationAboutWidget(
                        firstText: location.type, secondText: "Type"),
                    LocationAboutWidget(
                        firstText: _getDate(location.created),
                        secondText: "Date"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Residents',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: character.length,
                  itemBuilder: (context, index) {
                    final character2 = character[index];
                    return ResidentWidget(character: character2);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  String _getDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return '${dateTime.day}-${dateTime.month}-${dateTime.year}';
  }
}
