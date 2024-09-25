import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/constants.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightMode);

  void changeTheme(Brightness brightness) {
    if (brightness == Brightness.light) {
      emit(lightMode);
    } else {
      emit(darkMode);
    }
  }
}
