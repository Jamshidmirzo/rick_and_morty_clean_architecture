import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/character/presentation/bloc/bloc/character_bloc.dart';
import 'package:rick_and_morty/features/character/presentation/widgets/character_loaded_widget.dart';

class SortFilterScreen extends StatefulWidget {
  const SortFilterScreen({super.key});

  @override
  State<SortFilterScreen> createState() => _SortFilterScreenState();
}

class _SortFilterScreenState extends State<SortFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  String currenTab = statusConstant.toList().first;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: statusConstant.length, vsync: this);
  }


  onChanged(int index) {
    context.read<CharacterBloc>().add(
          CharacterEvent.getFilterCharacters(
              newUrl: 'status=${statusConstant.toList()[index]}'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) => onChanged(value),
          controller: tabController,
          tabs: [
            for (int i = 0; i < statusConstant.length; i++)
              Tab(
                text: statusConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(state.message ?? "Get smth wrong"),
            );
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
}
