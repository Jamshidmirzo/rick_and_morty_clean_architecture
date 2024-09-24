import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_widget.dart';

class EpisodeFilterScreen extends StatefulWidget {
  const EpisodeFilterScreen({super.key});

  @override
  State<EpisodeFilterScreen> createState() => _EpisodeFilterScreenState();
}

class _EpisodeFilterScreenState extends State<EpisodeFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    print(episodeConstant);
    tabController = TabController(length: episodeConstant.length, vsync: this);
    context.read<EpisodeBloc>().add(EpisodeEvent.getFilterEpisodes(
        'episode=${episodeConstant.toList().first}'));
  }

  _onChanged(int index) {
    context.read<EpisodeBloc>().add(EpisodeEvent.getFilterEpisodes(
        'episode=${episodeConstant.toList()[index]}'));
  }

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
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == Status.SUCCESS) {
            final episodes = state.episodes;
            return episodes == null
                ? Container()
                : ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    padding: const EdgeInsets.all(20),
                    itemCount: episodes.length,
                    itemBuilder: (context, index) {
                      final episode = episodes[index];
                      return EpisodeWidget(episode: episode);
                    },
                  );
          }
          return Container();
        },
      ),
    );
  }
}
