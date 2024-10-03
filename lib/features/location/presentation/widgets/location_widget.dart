import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';
import '../blocs/bloc/location_bloc.dart';
import '../pages/location_about_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LocationWidget extends StatelessWidget {
  final LocationModelEntity location;
  const LocationWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationAboutScreen(
                residents: location.residents, id: location.id),
          ),
        );
      },
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
              border: Border.all(
                  color: Brightness.dark ==
                          WidgetsBinding
                              .instance.platformDispatcher.platformBrightness
                      ? Colors.white
                      : Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/earth.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(AppDimens.PADDING_10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '${context.tr('dimension')}: ${location.dimension}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
