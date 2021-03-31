import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/ui/screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  final Future<void> isInitialized;

  SplashScreen({
    Key? key,
    required this.isInitialized,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primaryVariant,
            Theme.of(context).colorScheme.primary,
          ],
          stops: [
            0.1,
            0.7,
          ],
          begin: Alignment(-2, -2),
          end: Alignment(1.5, 2),
          transform: GradientRotation(259.87 * pi / 180),
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 160,
          width: 160,
          child: LogoIcon(),
        ),
      ),
    );
  }

  void _navigateToNext() async {
    await widget.isInitialized;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => OnboardingScreen(),
      ),
    );
  }
}
