import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/episode/presentation/widgets/episode_loaded_widget.dart';

class EpisodeFilterScreen extends StatefulWidget {
  const EpisodeFilterScreen({super.key});

  @override
  State<EpisodeFilterScreen> createState() => _EpisodeFilterScreenState();
}

class _EpisodeFilterScreenState extends State<EpisodeFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) {
            _onChanged(value);
          },
          isScrollable: true,
          controller: tabController,
          tabs: [
            for (int i = 0; i < episodeConstant.length; i++)
              Tab(
                text: episodeConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: BlocBuilder<EpisodeBloc, EpisodeState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(state.failure ?? "Server Error"),
            );
          }
          if (state.status == Status.LOADING) {
                  return const LoadingWidget();

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
    );
  }

   @override
  void initState() {
    super.initState();
    tabController = TabController(length: episodeConstant.length, vsync: this);
    context.read<EpisodeBloc>().add(EpisodeEvent.getFilterEpisodes(
        'episode=${episodeConstant.toList().first}'));
  }

  _onChanged(int index) {
    context.read<EpisodeBloc>().add(EpisodeEvent.getFilterEpisodes(
        'episode=${episodeConstant.toList()[index]}'));
  }
}
