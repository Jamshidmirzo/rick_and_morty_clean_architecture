import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false) {
    _loadTheme();
  }
  void changeTheme(bool isDarkMode) async {
    final prefes = await SharedPreferences.getInstance();
    emit(isDarkMode);
    prefes.setBool('isDark', isDarkMode);
  }

  _loadTheme() async {
    final prefes = await SharedPreferences.getInstance();
    bool isDark = prefes.getBool('isDark') ?? false;
    emit(isDark);
  }
}
