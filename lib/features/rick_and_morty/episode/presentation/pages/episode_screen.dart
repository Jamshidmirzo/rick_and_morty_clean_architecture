import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/blocs/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/pages/filter/episode_filter_screen.dart';
import 'package:rick_and_morty/features/rick_and_morty/episode/presentation/widgets/episode_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

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
                            return const EpisodeFilterScreen();
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
              child: BlocBuilder<EpisodeBloc, EpisodeState>(
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
                            separatorBuilder: (context, index) =>
                                const SizedBox(
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
          
            )
          ],
        ));
  }
}
