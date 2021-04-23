import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/res/themes.dart';

/// Theme data interactor
class ThemeSettingsInteractor extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;

  void setLightTheme() {
    currentTheme = lightTheme;
    notifyListeners();
  }

  void setDarkTheme() {
    currentTheme = darkTheme;
    notifyListeners();
  }

  get isDark => currentTheme == darkTheme;

  void switchLightness() {
    if (isDark) {
      setLightTheme();
    } else {
      setDarkTheme();
    }
  }
}