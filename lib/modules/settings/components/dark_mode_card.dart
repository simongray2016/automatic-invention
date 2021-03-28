import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/theme_mode.dart';
import 'package:myapp/cubit/theme_mode_cubit.dart';

class DarkModeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            'Dark mode',
            style: Theme.of(context).textTheme.headline4,
          ),
          trailing: DarkModeSwitch(),
        ),
      ),
    );
  }
}

class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({
    Key key,
  }) : super(key: key);

  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    switchToDarkMode(bool value) {
      setState(() {
        this.value = value;
      });
      !this.value
          ? context.read<ThemeModeCubit>().switchThemeMode(EThemeMode.light)
          : context.read<ThemeModeCubit>().switchThemeMode(EThemeMode.dark);
    }

    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (context, state) {
        this.value = state.themeMode == EThemeMode.dark;

        return Switch(
          value: this.value,
          onChanged: (value) => switchToDarkMode(value),
          activeColor: PrimaryColor,
        );
      },
    );
  }
}
