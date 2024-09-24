import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/blocs/bloc/location_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/location/presentation/widgets/location_widget.dart';

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
  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: locationDimensionConstant.length, vsync: this);
  }

  _onChanged(int index) {
    context.read<LocationBloc>().add(LocationEvent.getFilterLocation(
        'dimension=${locationDimensionConstant.toList()[index]}'));
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
            for (int i = 0; i < locationDimensionConstant.length; i++)
              Tab(
                text: locationDimensionConstant.toList()[i],
              ),
          ],
        ),
      ),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          if (state.status == Status.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
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
                : ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    padding: const EdgeInsets.all(20),
                    itemCount: locations.length,
                    itemBuilder: (context, index) {
                      final location = locations[index];
                      return LocationWidget(location: location);
                    },
                  );
          }

          return Container();
        },
      ),
    );
  }
}
