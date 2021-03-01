// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrow_right.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/arrow_right.svg

// <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M1.5 1L6.49953 6.00021L1.50041 11" stroke="white" stroke-width="2" stroke-linecap="round"/>
// </svg>
//

class _ArrowRightIconPainter extends CustomPainter {
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
    path0.moveTo(1.5, 1.0);
    path0.lineTo(6.49953, 6.00021);
    path0.lineTo(1.50041, 11.0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_ArrowRightIconPainter oldDelegate) => false;
}

class _ArrowRightIcon extends StatelessWidget {
  final Widget child;
  final Color color;

  const _ArrowRightIcon({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8 / 12,
      child: CustomPaint(
        painter: _ArrowRightIconPainter(),
        child: child,
      ),
    );
  }
}
