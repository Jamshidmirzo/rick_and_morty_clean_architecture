import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/pages/filter_screen/location_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

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
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) => onChaged(value),
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LocationFilterScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple.shade300),
                    child: const Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
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
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    padding: const EdgeInsets.all(20),
                    itemCount: state.locations?.length ?? 0,
                    itemBuilder: (context, index) {
                      final location = state.locations![index];
                      return LocationWidget(location: location);
                    },
                  );
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
