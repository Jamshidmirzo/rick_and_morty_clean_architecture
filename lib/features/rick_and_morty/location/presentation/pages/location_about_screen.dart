import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/error_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_about_loaded_widget.dart';


class LocationAboutScreen extends StatefulWidget {
  final List<String> residents;
  final int id;
  const LocationAboutScreen(
      {super.key, required this.residents, required this.id});

  @override
  State<LocationAboutScreen> createState() => _LocationAboutScreenState();
}

class _LocationAboutScreenState extends State<LocationAboutScreen> {
  @override
  void initState() {
    super.initState();
    fetchDate();
  }

  fetchDate() {
    context.read<LocationBloc>().add(
          LocationEvent.getCharactersAndLocation(
              ulrs: widget.residents, id: widget.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            ErrorWidgetRick(message: state.failure);
          }
          if (state.status == Status.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == Status.SUCCESS) {
            final location = state.singleLocation;
            List<Character>? character = state.characters;
            if (location == null && character == null) {
              return const Center(
                child: Text("Errro when getting"),
              );
            } else if (location != null && character != null) {
              return LocationAboutLoadedWidget(
                  location: location, character: character);
            }
          }
          return Container();
        },
      ),
    );
  }
}
