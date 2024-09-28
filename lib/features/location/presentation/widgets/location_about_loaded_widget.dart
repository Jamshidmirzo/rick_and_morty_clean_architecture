// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/app_diamans.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';
import 'package:rick_and_morty/core/widgets/date_widget.dart';
import 'package:rick_and_morty/core/widgets/photo_widget.dart';
import 'package:rick_and_morty/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty/features/location/domain/entities/location_model_entity.dart';
import 'location_about_widget.dart';
import 'resident_widget.dart';

class LocationAboutLoadedWidget extends StatelessWidget {
  final LocationModelEntity location;
  final List<CharacterEntity> character;
  const LocationAboutLoadedWidget({
    super.key,
    required this.location,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PhotoWidget(
          url: NetworkImage(
              'https://cdn.vectorstock.com/i/500p/82/99/no-image-available-like-missing-picture-vector-43938299.jpg'),
        ),
        20.sH(),
        Padding(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                padding: const EdgeInsets.all(AppDimens.PADDING_20),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
                  border: Border.all(
                      color: Brightness.dark ==
                              WidgetsBinding.instance.platformDispatcher
                                  .platformBrightness
                          ? Colors.white
                          : Colors.black),
                ),
                child: Column(
                  children: [
                    LocationAboutWidget(
                        firstText: location.name, secondText: "Name"),
                    LocationAboutWidget(
                        firstText: location.type, secondText: "Type"),
                    LocationAboutWidget(
                        firstText: GetDate.getDate(location.created),
                        secondText: "Date"),
                  ],
                ),
              ),
              20.sH(),
              const Text(
                'Residents',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
             20.sH(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                child: ListView.separated(
                  separatorBuilder: (context, index) => 10.sW(),
                  scrollDirection: Axis.horizontal,
                  itemCount: character.length,
                  itemBuilder: (context, index) {
                    final character2 = character[index];
                    return ResidentWidget(character: character2);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
