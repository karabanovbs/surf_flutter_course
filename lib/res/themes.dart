import 'package:flutter/material.dart';
import 'package:places/res/typography.dart';
import 'package:places/ui/widgets/widgets.dart';

import 'colors.dart';

final lightTheme = ThemeData.from(
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
  dividerColor: AppColorsWhite.inactiveBlack,
  sliderTheme: SliderThemeData(
    trackHeight: 2,
    inactiveTrackColor: AppColorsWhite.inactiveBlack,
    activeTrackColor: AppColorsWhite.green,
    thumbColor: AppColorsWhite.white,
    rangeTrackShape: AppRangeSliderTrackShape(),
    rangeThumbShape: RoundRangeSliderThumbShape(
      elevation: 3,
      enabledThumbRadius: 8,
      disabledThumbRadius: 8,
    ),
    overlayShape: RoundSliderOverlayShape(
      overlayRadius: 16,
    ),
  ),
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
  textTheme: textTheme
      .apply(
        bodyColor: AppColorsBlack.white,
        displayColor: AppColorsBlack.white,
      )
      .copyWith(
        subtitle1:
            textTheme.subtitle1.copyWith(color: AppColorsBlack.secondary2),
      ),
).copyWith(
  dividerColor: AppColorsWhite.inactiveBlack,
  sliderTheme: SliderThemeData(
    trackHeight: 2,
    inactiveTrackColor: AppColorsBlack.inactiveBlack,
    activeTrackColor: AppColorsBlack.green,
    thumbColor: AppColorsBlack.white,
    rangeTrackShape: AppRangeSliderTrackShape(),
    rangeThumbShape: RoundRangeSliderThumbShape(
      elevation: 3,
      enabledThumbRadius: 8,
      disabledThumbRadius: 8,
    ),
    overlayShape: RoundSliderOverlayShape(
      overlayRadius: 16,
    ),
  ),
);
