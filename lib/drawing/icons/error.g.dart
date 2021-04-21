// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/error.svg

// <svg width="64" height="64" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M18.6874 18.6857C19.7289 17.6444 21.4173 17.6445 22.4587 18.686L32.001 28.2296L41.5432 18.686C42.5846 17.6445 44.273 17.6444 45.3145 18.6857C46.356 19.727 46.3561 21.4155 45.3147 22.4569L35.7719 32.001L45.3138 41.5442C46.3551 42.5857 46.355 44.2741 45.3135 45.3154C44.2721 46.3568 42.5836 46.3567 41.5423 45.3152L32.001 35.7725L22.4596 45.3152C21.4183 46.3567 19.7298 46.3568 18.6884 45.3154C17.6469 44.2741 17.6468 42.5857 18.6881 41.5442L28.23 32.001L18.6872 22.4569C17.6458 21.4155 17.646 19.727 18.6874 18.6857Z" fill="#7C7E92" fill-opacity="0.56"/>
// <circle cx="32" cy="32" r="29.335" stroke="#7C7E92" stroke-opacity="0.56" stroke-width="5.33"/>
// </svg>
//

class _ErrorIconPainter extends CustomPainter {
  const _ErrorIconPainter();

  final originalHeight = 64;
  final originalWidth = 64;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 64, size.height / 64);

    path0(canvas, size);
    circle1(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color(0xFF7C7E92);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(18.6874, 18.6857);
    path0.cubicTo(19.7289, 17.6444, 21.4173, 17.6445, 22.4587, 18.686);
    path0.lineTo(32.001, 28.2296);
    path0.lineTo(41.5432, 18.686);
    path0.cubicTo(42.5846, 17.6445, 44.273, 17.6444, 45.3145, 18.6857);
    path0.cubicTo(46.356, 19.727, 46.3561, 21.4155, 45.3147, 22.4569);
    path0.lineTo(35.7719, 32.001);
    path0.lineTo(45.3138, 41.544200000000004);
    path0.cubicTo(46.3551, 42.5857, 46.355, 44.2741, 45.3135, 45.3154);
    path0.cubicTo(
        44.2721, 46.3568, 42.5836, 46.356700000000004, 41.5423, 45.3152);
    path0.lineTo(32.001, 35.7725);
    path0.lineTo(22.459600000000002, 45.3152);
    path0.cubicTo(
        21.4183, 46.356700000000004, 19.7298, 46.3568, 18.6884, 45.3154);
    path0.cubicTo(
        17.6469, 44.2741, 17.6468, 42.5857, 18.6881, 41.544200000000004);
    path0.lineTo(28.23, 32.001);
    path0.lineTo(18.6872, 22.4569);
    path0.cubicTo(17.6458, 21.4155, 17.646, 19.727, 18.6874, 18.6857);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  circle1(Canvas canvas, Size size) {
    final Rect oval1 = Rect.fromCircle(center: Offset(32, 32), radius: 29.335);
    Paint paint1 = Paint();
    paint1.style = PaintingStyle.stroke;
    paint1.color = Color(0xFF7C7E92);
    paint1.strokeWidth = 5.33;
    var path1 = Path()..addOval(oval1);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(_ErrorIconPainter oldDelegate) => false;
}

class _ErrorIcon extends StatelessWidget {
  const _ErrorIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 64 / 64,
      child: const CustomPaint(
        painter: const _ErrorIconPainter(),
      ),
    );
  }
}
