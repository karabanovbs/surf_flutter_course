import 'package:flutter/material.dart';
import 'package:places/mocks.dart' as mocks;
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/add_sight_screen.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/onboarding_screen.dart';
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
      //   sight: mocks.sights.first,
      // ),
      // home: SightListScreen(),
      // home: FiltersScreen(),
      // home: SettingsScreen(),
      // home: AddSightScreen(),
      home: OnboardingScreen(),
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
