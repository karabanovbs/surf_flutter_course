import 'package:flutter/material.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/splash_screen.dart';

import 'data/interactor/theme_interactor.dart';

void main() {
  runApp(App());
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
      theme: ThemeSettingsInteractor().currentTheme,
      home: SplashScreen(
        isInitialized: Future.delayed(Duration(seconds: 2)),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    ThemeSettingsInteractor().addListener(_onThemeChange);
  }

  _onThemeChange() {
    setState(() {});
  }

  @override
  void dispose() {
    ThemeSettingsInteractor().removeListener(_onThemeChange);
    super.dispose();
  }
}
