import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

/// App home screen with list of sight
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Create AppBar
      appBar: AppBar(
        /// Set color by backgroundColor
        backgroundColor: Theme.of(context).backgroundColor,

        /// Remove shadow
        elevation: 0,

        /// Set AppBar height
        toolbarHeight: 72,
        title: RichText(
          maxLines: 2,
          text: TextSpan(
            style: TextStyle(
              color: AppColorsWhite.secondary,
              fontSize: 32,
              height: 36 / 32,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                  text: 'С', style: TextStyle(color: AppColorsWhite.green)),
              TextSpan(text: 'писок\n'),
              TextSpan(
                  text: 'и', style: TextStyle(color: AppColorsWhite.yellow)),
              TextSpan(text: 'нтересных мест'),
            ],
          ),
        ),
      ),
    );
  }
}
