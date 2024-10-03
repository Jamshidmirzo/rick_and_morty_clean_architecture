// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

String baseUrl = 'https://rickandmortyapi.com/api';

enum Status { ERROR, LOADING, SUCCESS, LOADED }

enum AppLanguages { InitialLng, EnglishLng, RussianLng, UzbekLng }

Set statusConstant = {};
Set speciesConstant = {};
Set genderConstant = {};

Set locationTypeConstant = {};
Set locationDimensionConstant = {};
Set episodeConstant = {};

ThemeData lightMode = ThemeData.light();
ThemeData darkMode = ThemeData.dark();


String localeConstants='Locale';