import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/location/presentation/widgets/location_loaded_wdiget.dart';

class TypeLocationFilterScreen extends StatefulWidget {
  const TypeLocationFilterScreen({super.key});

  @override
  State<TypeLocationFilterScreen> createState() =>
      _TypeLocationFilterScreenState();
}

class _TypeLocationFilterScreenState extends State<TypeLocationFilterScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<dynamic> types = locationTypeConstant.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) {
            _onchanged(value);
          },
          isScrollable: true,
          controller: tabController,
          tabs: [
            for (int i = 0; i < types.length; i++)
              Tab(
                text: types[i],
              ),
          ],
        ),
      ),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          if (state.status == Status.LOADING) {
            return const LoadingWidget();
          }
          if (state.status == Status.ERROR) {
            return Center(
              child: Text(state.failure ?? "Smth get wrong"),
            );
          }
          if (state.status == Status.SUCCESS) {
            final locations = state.locations;
            return locations == null
                ? const Center(
                    child: Text("Came null"),
                  )
                : LocationLoadedWdiget(locations: locations);
          }

          return Container();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: types.length, vsync: this);
  }

  _onchanged(int index) {
    context.read<LocationBloc>().add(LocationEvent.getFilterLocation(
        'type=${types[index]}'));
  }
}
