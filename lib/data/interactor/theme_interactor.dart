import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/data/storage/storage.dart';
import 'package:places/res/themes.dart';

const _theme_key = 'is_dart';

/// Theme data interactor
/// TODO refactor to bloc
class ThemeSettingsInteractor extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;
  final IDataStorage _dataStorage;

  ThemeSettingsInteractor(this._dataStorage) {
    _dataStorage.getBool(_theme_key).then((value) {
      if (value == true) {
        setDarkTheme();
      } else {
        setLightTheme();
      }
    });
  }

  void setLightTheme() {
    currentTheme = lightTheme;
    _dataStorage.setBool(_theme_key, false);
    notifyListeners();
  }

  void setDarkTheme() {
    currentTheme = darkTheme;
    _dataStorage.setBool(_theme_key, true);
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
