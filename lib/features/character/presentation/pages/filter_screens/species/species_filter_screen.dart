import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/error_widget.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_loaded_widget.dart';

class SpeciesFilterScreen extends StatefulWidget {
  const SpeciesFilterScreen({super.key});

  @override
  State<SpeciesFilterScreen> createState() => _SpeciesFilterScreenState();
}

class _SpeciesFilterScreenState extends State<SpeciesFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) {
            onChanged(value);
          },
          controller: tabController,
          tabs: [
            for (int i = 0; i < speciesConstant.length; i++)
              Tab(
                text: speciesConstant.toList()[i],
              ),
          ],
        ),
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
            final characters = state.character;
            return characters == null
                ? Center(
                    child: Text(state.message ?? "Get smth wrong"),
                  )
                : CharacterLoadedWidget(character: characters);
          }
          return Container();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: speciesConstant.length, vsync: this);
  }

  onChanged(int index) {
    context.read<CharacterBloc>().add(
          CharacterEvent.getFilterCharacters(
              newUrl: 'species=${speciesConstant.toList()[index]}'),
        );
  }
}
