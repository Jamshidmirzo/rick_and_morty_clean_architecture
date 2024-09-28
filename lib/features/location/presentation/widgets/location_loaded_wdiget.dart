// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';

import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';
import 'location_widget.dart';

class LocationLoadedWdiget extends StatelessWidget {
  final List<LocationModelEntity> locations;
  const LocationLoadedWdiget({
    super.key,
    required this.locations,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => 20.sH(),
      padding: const EdgeInsets.all(AppDimens.PADDING_20),
      itemCount: locations.length,
      itemBuilder: (context, index) {
        final location = locations[index];
        return LocationWidget(location: location);
      },
    );
  }
}
