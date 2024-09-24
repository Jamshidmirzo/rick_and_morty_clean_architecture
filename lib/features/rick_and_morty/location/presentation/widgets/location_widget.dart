
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/data/model/location_model.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/pages/location_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LocationWidget extends StatelessWidget {
  final LocationModel location;
  const LocationWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationAboutScreen(
              residents: location.residents,
              id: location.id
            ),
          ),
        );
      },
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          if (state.status == Status.SUCCESS &&
              state.singleLocation != null &&
              state.characters != null) {}
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/earth.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                location.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Dimension: ${location.dimension}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
