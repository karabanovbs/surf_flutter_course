// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/check.svg

// <svg width="14" height="10" viewBox="0 0 14 10" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M12.5 1.50024L5.49979 8.49977L1.5 4.50066" stroke="white" stroke-width="2" stroke-linecap="round"/>
// </svg>
//

class _CheckIconPainter extends CustomPainter {
  const _CheckIconPainter();

  final originalHeight = 10;
  final originalWidth = 14;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 14, size.height / 10);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.moveTo(12.5, 1.50024);
    path0.lineTo(5.49979, 8.49977);
    path0.lineTo(1.5, 4.50066);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_CheckIconPainter oldDelegate) => false;
}

class _CheckIcon extends StatelessWidget {
  const _CheckIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 14 / 10,
      child: const CustomPaint(
        painter: const _CheckIconPainter(),
      ),
    );
  }
}
