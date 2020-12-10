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

        /// Set title
        title: Text(
          'Список\nинтересных мест',
          /// Set text align
          textAlign: TextAlign.left,
          maxLines: 2,
          style: TextStyle(
            color: AppColorsWhite.secondary,
            fontSize: 32,
            height: 36 / 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
