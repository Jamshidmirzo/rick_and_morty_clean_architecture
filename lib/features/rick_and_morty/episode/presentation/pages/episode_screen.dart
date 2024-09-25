import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/error_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/allwidget/search_widget.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/pages/filter/episode_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_loaded_widget.dart';

class EpisodeScreen extends StatefulWidget {
  const EpisodeScreen({super.key});

  @override
  State<EpisodeScreen> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends State<EpisodeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EpisodeBloc>().add(const EpisodeEvent.getEpisodes(null));
  }

  onChaged(String value) {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      context.read<EpisodeBloc>().add(
            EpisodeEvent.getEpisodes(value),
          );
    });
  }

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SearchWidget(
                onTapContainer: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EpisodeFilterScreen(),
                      ));
                },
                onChanged: onChaged,
                textController: textController),
            Expanded(
              child: BlocBuilder<EpisodeBloc, EpisodeState>(
                builder: (context, state) {
                  if (state.status == Status.ERROR) {
                    ErrorWidgetRick(message: state.failure);
                  }
                  if (state.status == Status.LOADING) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.status == Status.SUCCESS) {
                    final episodes = state.episodes;
                    return episodes == null
                        ? Container()
                        : EpisodeLoadedWidget(episodes: episodes);
                  }
                  return Container();
                },
              ),
            )
          ],
        ));
  }
}
