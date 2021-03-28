import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:myapp/constants/theme_mode.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(ThemeModeState(themeMode: EThemeMode.light));

  void switchThemeMode(EThemeMode themeMode) =>
      emit(ThemeModeState(themeMode: themeMode));
}
