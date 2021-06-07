import 'dart:math';

import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// капец странная фигня, не очень понял почему тут implisit тебовалось
    return TweenAnimationBuilder(
      duration: Duration(
        minutes: 10,
      ),
      tween: Tween<double>(
        begin: 0.0,
        end: -2000.0,
      ),
      builder: (BuildContext context, double value, Widget? child) {
        return Container(
          transform: Matrix4.rotationZ(
            pi * value,
          ),
          transformAlignment: Alignment.center,
          child: child,
        );
      },
      child: SizedBox(
        width: 30,
        height: 30,
        child: CustomPaint(
          painter: _Loader(),
        ),
      ),
    );
  }
}

class _Loader extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2.0, size.height / 2.0);
    final double radius = size.width / 2;
    double angle = 300;
    Paint paint = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..shader = new SweepGradient(
        colors: [
          Color(0xFF7C7E92),
          Color(0xFFF5F5F5),
        ],
        startAngle: doubleToAngle(
          0,
        ),
        endAngle: doubleToAngle(
          angle,
        ),
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: radius,
        ),
      );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      doubleToAngle(20),
      doubleToAngle(angle),
      false,
      paint,
    );
  }

  double doubleToAngle(double angle) => angle * pi / 180.0;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
