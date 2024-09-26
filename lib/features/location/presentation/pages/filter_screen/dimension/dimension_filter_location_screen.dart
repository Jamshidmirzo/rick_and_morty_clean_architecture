import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/widgets/loading_widget.dart';
import 'package:rick_and_morty/features/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/location/presentation/widgets/location_loaded_wdiget.dart';

class DimensionFilterLocationScreen extends StatefulWidget {
  const DimensionFilterLocationScreen({super.key});

  @override
  State<DimensionFilterLocationScreen> createState() =>
      _DimensionFilterLocationScreenState();
}

class _DimensionFilterLocationScreenState
    extends State<DimensionFilterLocationScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<dynamic> dimensions = locationDimensionConstant.toList();

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
            for (int i = 0; i < dimensions.length; i++)
              Tab(
                text: dimensions[i],
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
    tabController = TabController(length: dimensions.length, vsync: this);
  }

  _onChanged(int index) {
    context
        .read<LocationBloc>()
        .add(LocationEvent.getFilterLocation('dimension=${dimensions[index]}'));
  }
}
