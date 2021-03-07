// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particular_place.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/particular_place.svg

// <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M16 4L19.2411 12.7589L28 16L19.2411 19.2411L16 28L12.7589 19.2411L4 16L12.7589 12.7589L16 4Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// </svg>
//

class _ParticularPlaceIconPainter extends CustomPainter {
  final originalHeight = 32;
  final originalWidth = 32;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 32, size.height / 32);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.moveTo(16.0, 4.0);
    path0.lineTo(19.2411, 12.7589);
    path0.lineTo(28.0, 16.0);
    path0.lineTo(19.2411, 19.2411);
    path0.lineTo(16.0, 28.0);
    path0.lineTo(12.7589, 19.2411);
    path0.lineTo(4.0, 16.0);
    path0.lineTo(12.7589, 12.7589);
    path0.lineTo(16.0, 4.0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_ParticularPlaceIconPainter oldDelegate) => false;
}

class _ParticularPlaceIcon extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const _ParticularPlaceIcon({
    Key? key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 32 / 32,
      child: CustomPaint(
        painter: _ParticularPlaceIconPainter(),
        child: child,
      ),
    );
  }
}
