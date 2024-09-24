import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_about_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/resident_widget.dart';

class EpisodeAboutScreen extends StatefulWidget {
  final List<String> urls;
  final int id;
  const EpisodeAboutScreen({super.key, required this.id, required this.urls});

  @override
  State<EpisodeAboutScreen> createState() => _EpisodeAboutScreenState();
}

class _EpisodeAboutScreenState extends State<EpisodeAboutScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EpisodeBloc>().add(
          EpisodeEvent.getResidentsAndLocationEpisodes(widget.urls, widget.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<EpisodeBloc, EpisodeState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(state.failure ?? "Smth get wring"),
            );
          }
          if (state.status == Status.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == Status.SUCCESS) {
            final characters = state.characters;
            final episode = state.singleEpisodes;
            if (characters == null && episode == null) {
              return const Center(
                child: Text("Erorororro"),
              );
            } else if (characters != null && episode != null) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/episode.png')),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          EpisodeAboutWidget(
                              firstText: episode.name, secondText: 'Name'),
                          EpisodeAboutWidget(
                              firstText: _getDate(episode.created),
                              secondText: 'Created'),
                          EpisodeAboutWidget(
                              firstText: episode.air_date,
                              secondText: 'Air Date'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: characters.length,
                      itemBuilder: (context, index) {
                        final character = characters[index];
                        return ResidentWidget(character: character);
                      },
                    ),
                  ),
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
}
