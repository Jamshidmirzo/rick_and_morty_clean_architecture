import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/character/presentation/widgets/character_info_widget.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
          const CharacterEvent.getCharacters(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(
                _failureMessage(
                  state.message ?? ServerFailure(),
                ),
              ),
            );
          }
          if (state.status == Status.LOADING) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.SUCCESS) {
            return SizedBox(
              height: 340,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                itemCount: state.character?.length ?? 0,
                itemBuilder: (context, index) {
                  final character = state.character![index];
                  return CharacterInfoWidget(character: character);
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return 'Server Error';
      case CacheFailure():
        return 'Cache Error';
      default:
        return 'Something went wrong';
    }
  }
}
