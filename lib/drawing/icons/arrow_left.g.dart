// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrow_left.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/arrow_left.svg

// <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M6.5 1L1.50047 6.00021L6.49959 11" stroke="white" stroke-width="2" stroke-linecap="round"/>
// </svg>
//

class _ArrowLeftIconPainter extends CustomPainter {
  const _ArrowLeftIconPainter();

  final originalHeight = 12;
  final originalWidth = 8;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 8, size.height / 12);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.moveTo(6.5, 1.0);
    path0.lineTo(1.50047, 6.00021);
    path0.lineTo(6.49959, 11.0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_ArrowLeftIconPainter oldDelegate) => false;
}

class _ArrowLeftIcon extends StatelessWidget {
  const _ArrowLeftIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 8 / 12,
      child: const CustomPaint(
        painter: const _ArrowLeftIconPainter(),
      ),
    );
  }
}
