// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/rick_and_morty/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_widget.dart';

class LocationLoadedWdiget extends StatelessWidget {
  final List<LocationModel> locations;
  const LocationLoadedWdiget({
    super.key,
    required this.locations,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      padding: const EdgeInsets.all(20),
      itemCount: locations.length,
      itemBuilder: (context, index) {
        final location = locations[index];
        return LocationWidget(location: location);
      },
    );
    
  }
}
