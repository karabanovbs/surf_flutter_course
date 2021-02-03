import 'package:flutter/material.dart';
import 'package:places/res/typography.dart';

import 'colors.dart';

var lightTheme = ThemeData.from(
  colorScheme: ColorScheme(
    primary: AppColorsWhite.green,
    primaryVariant: AppColorsWhite.yellow,
    secondary: AppColorsWhite.secondary,
    secondaryVariant: AppColorsWhite.secondary2,
    background: AppColorsWhite.white,
    surface: AppColorsWhite.background,
    error: AppColorsWhite.red,
    onPrimary: AppColorsWhite.white,
    onSecondary: AppColorsWhite.secondary,
    onBackground: AppColorsWhite.main,
    onSurface: AppColorsWhite.inactiveBlack,
    onError: AppColorsWhite.white,
    brightness: Brightness.light,
  ),
  textTheme: textTheme.apply(
    bodyColor: AppColorsWhite.main,
    displayColor: AppColorsWhite.main,
  ),
).copyWith(
    // scaffoldBackgroundColor: AppColorsWhite.white,
    // backgroundColor: AppColorsWhite.white,
    // primaryColor: AppColorsWhite.green,
    );
var darkTheme = ThemeData.from(
  colorScheme: ColorScheme(
    primary: AppColorsBlack.green,
    primaryVariant: AppColorsBlack.yellow,
    secondary: AppColorsBlack.white,
    secondaryVariant: AppColorsBlack.secondary2,
    background: AppColorsBlack.main,
    surface: AppColorsBlack.dark,
    error: AppColorsBlack.red,
    onPrimary: AppColorsBlack.white,
    onSecondary: AppColorsBlack.secondary,
    onBackground: AppColorsBlack.white,
    onSurface: AppColorsBlack.inactiveBlack,
    onError: AppColorsBlack.white,
    brightness: Brightness.light,
  ),
  textTheme: textTheme.apply(
    bodyColor: AppColorsBlack.white,
    displayColor: AppColorsBlack.white,
  ).copyWith(
      subtitle1: textTheme.subtitle1.copyWith(
        color: AppColorsBlack.secondary2
      ),
  ),
).copyWith(
    // scaffoldBackgroundColor: AppColorsBlack.main,
    // backgroundColor: AppColorsBlack.main,
    // primaryColor: AppColorsBlack.green,
    );
