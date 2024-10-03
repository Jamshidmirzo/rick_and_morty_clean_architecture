import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/error_widget.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_about_loaded_widget.dart';

class CharacterAboutScreen extends StatefulWidget {
  final int id;
  const CharacterAboutScreen({
    required this.id,
    super.key,
  });

  @override
  State<CharacterAboutScreen> createState() => _CharacterAboutScreenState();
}

class _CharacterAboutScreenState extends State<CharacterAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('charcinfo')),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            ErrorWidgetRick(message: state.message);
          }
          if (state.status == Status.LOADING) {
            return const LoadingWidget();
          }
          if (state.status == Status.SUCCESS) {
            final character = state.singleCharacter;
            return character == null
                ? const Center(
                    child: Text("error when getting character"),
                  )
                : CharacterAboutLoadedWidget(
                    character: character,
                  );
          }
          return Container();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() {
    context.read<CharacterBloc>().add(
          CharacterEvent.getSingleCharacters(
            id: widget.id,
          ),
        );
  }
}
