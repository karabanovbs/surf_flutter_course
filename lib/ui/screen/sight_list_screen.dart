import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';

/// Constants
const double appBarPaddingTop = 40;
const double appBarPaddingBottom = 16;
const double appBarPaddingLeft = 16;
const double appBarPaddingRight = 16;
const double appBarTitleHeight = 72;
const double totalAppBarHeight =
    appBarPaddingTop + appBarTitleHeight + appBarPaddingBottom;

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
        toolbarHeight: totalAppBarHeight,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(appBarPaddingLeft,
              appBarPaddingTop, appBarPaddingRight, appBarPaddingBottom),
          child: SizedBox(
            height: appBarTitleHeight,
            width: double.infinity,
            child: RichText(
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
                      text: 'и',
                      style: TextStyle(color: AppColorsWhite.yellow)),
                  TextSpan(text: 'нтересных мест'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
