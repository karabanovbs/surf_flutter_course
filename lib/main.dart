import 'package:flutter/material.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/splash_screen.dart';

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
      home: SplashScreen(
        isInitialized: Future.delayed(Duration(seconds: 2)),
      ),
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
