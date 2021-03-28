import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/config/routes/router.dart';
import 'package:myapp/config/themes/theme.dart';
import 'package:myapp/constants/theme_mode.dart';

import 'cubit/theme_mode_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeModeCubit(),
      child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Saving money',
            theme: ThemeConfig.lightMode,
            darkTheme: ThemeConfig.darkMode,
            themeMode: state.themeMode == EThemeMode.light
                ? ThemeMode.light
                : ThemeMode.dark,
            onGenerateRoute: RouterConfig.generateRoute,
          );
        },
      ),
    );
  }
}
