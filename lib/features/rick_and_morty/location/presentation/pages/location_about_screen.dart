import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/data/model/character.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_about_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/resident_widget.dart';

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
            return Center(
              child: 
                  Text(state.failure ?? "Smth get wrong"),
                
              
            );
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
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270,
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
                          width: double.infinity,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
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
          }
          return Container();
        },
      ),
    );
  }

  String _getDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return '${dateTime.day}-${dateTime.month}-${dateTime.year}';
  }

  String _failureMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Error';
    } else if (failure is CacheFailure) {
      return "Cache Error";
    } else {
      return 'Something went wrong in location fetching';
    }
  }
}
