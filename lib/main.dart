import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColorsWhite.white,
        backgroundColor: AppColorsWhite.white,
      ),
      home: SightListScreen(),
    );
  }
}