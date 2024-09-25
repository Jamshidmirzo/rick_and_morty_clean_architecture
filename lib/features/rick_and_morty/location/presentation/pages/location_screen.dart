import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/search_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/pages/filter_screen/location_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_loaded_wdiget.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocationBloc>().add(
          const LocationEvent.getAllLocation(null),
        );
  }

  onChaged(String value) {
    Future.delayed(const Duration(milliseconds: 500)).then(
      (_) {
        context.read<LocationBloc>().add(
              LocationEvent.getAllLocation(value),
            );
      },
    );
  }

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: Column(
        children: [
          SearchWidget(
              onTapContainer: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationFilterScreen(),
                  ),
                );
              },
              onChanged: onChaged,
              textController: textController),
          Expanded(
            child: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
                if (state.status == Status.ERROR) {
                  return Center(
                    child: Text(
                      state.failure ?? "Smth get wrong",
                    ),
                  );
                }
                if (state.status == Status.LOADING) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.status == Status.SUCCESS) {
                  final locations = state.locations;
                  return locations == null
                      ? const Center(
                          child: Text("Came null"),
                        )
                      : LocationLoadedWdiget(locations: locations);
                }
                return const Center(
                  child: Text('No data available'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
