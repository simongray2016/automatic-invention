import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/theme_mode.dart';
import 'package:myapp/cubit/theme_mode_cubit.dart';

class DarkModeCard extends StatefulWidget {
  const DarkModeCard({
    Key key,
  }) : super(key: key);

  @override
  _DarkModeCardState createState() => _DarkModeCardState();
}

class _DarkModeCardState extends State<DarkModeCard> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    onChange(bool value) {
      !value
          ? context.read<ThemeModeCubit>().switchThemeMode(EThemeMode.light)
          : context.read<ThemeModeCubit>().switchThemeMode(EThemeMode.dark);
      setState(() {
        this.value = value;
      });
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            'Dark mode',
            style: Theme.of(context).textTheme.headline4,
          ),
          trailing: BlocListener<ThemeModeCubit, ThemeModeState>(
            listener: (context, state) {},
            child: Switch(
              value: this.value,
              onChanged: (value) => onChange(value),
              activeColor: PrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
