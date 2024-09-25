import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/error_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_about_loaded_widget.dart';

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
            ErrorWidgetRick(message: state.failure);
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
              return EpisodeAboutLoadedWidget(
                  characters: characters, episode: episode);
            }
          }
          return Container();
        },
      ),
    );
  }
}
