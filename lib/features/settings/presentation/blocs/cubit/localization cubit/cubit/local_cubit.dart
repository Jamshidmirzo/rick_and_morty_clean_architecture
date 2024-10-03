import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCubit extends Cubit<LocalState> {
  final SharedPreferences shared;
  LocalCubit(this.shared)
      : super(
          LocalState(
            locale: Locale(shared.getString(localeConstants) ?? 'en'),
          ),
        );

  Future<void> changeLocale(String locale) async {
    await shared.setString(localeConstants, locale);
    emit(LocalState(locale: Locale(locale)));
  }

  String getLocale() {
    return shared.getString(localeConstants) ?? 'uz';
  }
}
