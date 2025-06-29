import 'package:bloc/bloc.dart';
import 'package:portfolio/core/theme/theme_cubit/theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkMode: true)) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? true;
    emit(ThemeState(isDarkMode: isDark));
  }

  Future<void> toggleTheme() async {
    final newTheme = !state.isDarkMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', newTheme);
    emit(ThemeState(isDarkMode: newTheme));
  }
}
