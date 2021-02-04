
import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      theme: isDark ? darkTheme : lightTheme,
      home: VisitingScreen(),
      // home: SightDetails(
      //   sight: mocks.first,
      // ),
      // home: SightListScreen(),
    );
  }
}
