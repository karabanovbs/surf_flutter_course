import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/settings_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(App());
}

/// Theme data holder
class ThemeSettings extends ChangeNotifier {
  static final ThemeSettings _instance = ThemeSettings._();

  ThemeSettings._();

  factory ThemeSettings() {
    return _instance;
  }

  ThemeData currentTheme = lightTheme;

  setLightTheme() {
    currentTheme = lightTheme;
    notifyListeners();
  }

  setDarkTheme() {
    currentTheme = darkTheme;
    notifyListeners();
  }

  get isDark => currentTheme == darkTheme;

  switchLightness() {
    if (isDark) {
      setLightTheme();
    } else {
      setDarkTheme();
    }
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _App();
  }
}

class _App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      theme: ThemeSettings().currentTheme,
      // home: VisitingScreen(),
      // home: SightDetails(
      //   sight: mocks.first,
      // ),
      // home: SightListScreen(),
      // home: FiltersScreen(),
      home: SettingsScreen(),
    );
  }

  @override
  void initState() {
    super.initState();
    ThemeSettings().addListener(_onThemeChange);
  }

  _onThemeChange() {
    setState(() {});
  }

  @override
  void dispose() {
    ThemeSettings().removeListener(_onThemeChange);
    super.dispose();
  }
}
