import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/onboarding/onboarding_bloc.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/ui/screen/onboarding_screen.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/widgets/widgets.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) async {
        await widget.isInitialized;
        state.maybeWhen(
          needOnboading: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => OnboardingScreen(),
              ),
            );
          },
          skipOnboading: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SightListScreen(),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Container(
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
            child: AnimatedSplashLogo(),
          ),
        ),
      ),
    );
  }
}
