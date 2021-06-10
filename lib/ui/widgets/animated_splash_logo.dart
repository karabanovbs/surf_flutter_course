import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class AnimatedSplashLogo extends StatefulWidget {
  @override
  _AnimatedSplashLogoState createState() => _AnimatedSplashLogoState();
}

class _AnimatedSplashLogoState extends State<AnimatedSplashLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _radianAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _controller.repeat(
      min: 0,
      max: 1,
      period: Duration(
        milliseconds: 1600,
      ),
    );

    _radianAnimation = Tween<double>(
      begin: 2 * pi,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, snapshot) {
        return Transform.rotate(
          angle: _radianAnimation.value,
          child: LogoIcon(),
        );
      },
    );
  }
}
