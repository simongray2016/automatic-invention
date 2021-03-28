import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class ThemeConfig {
  static ThemeData get lightMode => ThemeData(
        brightness: Brightness.light,
        backgroundColor: PrimaryColor,
        appBarTheme: AppBarTheme(
          color: PrimaryColor,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: WhiteColor,
            size: 30,
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyleLightTheme.headline1,
          headline4: TextStyleLightTheme.headline4,
          headline5: TextStyleLightTheme.headline5,
        ),
        inputDecorationTheme: TextFieldTheme.common,
        cursorColor: PrimaryColor,
        primaryColor: PrimaryColor,
        cardTheme: CardTheme(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
        ),
        colorScheme: ColorScheme(
          primary: PrimaryColor,
          primaryVariant: PrimaryColor,
          secondary: PrimaryColor,
          secondaryVariant: PrimaryColor,
          surface: PrimaryColor,
          background: LightGreyColor,
          error: ErrorColor,
          onPrimary: PrimaryColor,
          onSecondary: PrimaryColor,
          onSurface: PrimaryColor,
          onBackground: PrimaryColor,
          onError: PrimaryColor,
          brightness: Brightness.light,
        ),
      );

  static ThemeData get darkMode => ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(
          color: PrimaryColor,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: WhiteColor,
            size: 30,
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyleDarkTheme.headline1,
          headline4: TextStyleDarkTheme.headline4,
          headline5: TextStyleDarkTheme.headline5,
        ),
        inputDecorationTheme: TextFieldTheme.common,
        cursorColor: PrimaryColor,
        primaryColor: PrimaryColor,
        cardTheme: CardTheme(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
        ),
      );
}

class TextStyleLightTheme {
  static TextStyle get headline1 => TextStyle(
        color: WhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );

  static TextStyle get headline4 => TextStyle(
        color: BlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      );

  static TextStyle get headline5 => TextStyle(
        color: BlackColor,
        fontSize: 12.0,
      );

  static TextStyle get hintText => TextStyle(
        color: LightGreyColor,
        fontSize: 14.0,
      );

  static TextStyle get highlight => TextStyle(
        color: PrimaryColor,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttton => TextStyle(
        color: WhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
}

class TextStyleDarkTheme {
  static TextStyle get headline1 => TextStyle(
        color: WhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );

  static TextStyle get headline4 => TextStyle(
        color: WhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      );

  static TextStyle get headline5 => TextStyle(
        color: WhiteColor,
        fontSize: 12.0,
      );

  static TextStyle get hintText => TextStyle(
        color: LightGreyColor,
        fontSize: 14.0,
      );

  static TextStyle get highlight => TextStyle(
        color: PrimaryColor,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttton => TextStyle(
        color: WhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
}

class TextFieldTheme {
  static InputDecorationTheme get common => InputDecorationTheme(
        hintStyle: TextStyleLightTheme.hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: LightGreyColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: DarkGreyColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      );
}
