// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafe.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/cafe.svg

// <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M9.33333 30L6 9.33337H14.6667M9.33333 30H21.3333M9.33333 30H8M21.3333 30L24.6667 9.33337H23.3333M21.3333 30H22.6667" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// <path d="M26.6654 2L20.4045 3.87826C20.1569 3.95255 19.9745 4.16334 19.9366 4.41911L17.332 22" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// <path d="M7.33301 14H23.333" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// </svg>
//

class _CafeIconPainter extends CustomPainter {
  final originalHeight = 32;
  final originalWidth = 32;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 32, size.height / 32);

    path0(canvas, size);
    path1(canvas, size);
    path2(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.moveTo(9.33333, 30.0);
    path0.lineTo(6.0, 9.33337);
    path0.lineTo(14.6667, 9.33337);
    path0.moveTo(9.33333, 30.0);
    path0.lineTo(21.3333, 30.0);
    path0.moveTo(9.33333, 30.0);
    path0.lineTo(8.0, 30.0);
    path0.moveTo(21.3333, 30.0);
    path0.lineTo(24.6667, 9.33337);
    path0.lineTo(23.3333, 9.33337);
    path0.moveTo(21.3333, 30.0);
    path0.lineTo(22.6667, 30.0);

    canvas.drawPath(path0, paint0);
  }

  path1(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1.style = PaintingStyle.stroke;
    paint1.color = Color.fromARGB(255, 255, 255, 255);
    paint1.strokeWidth = 2;
    paint1.strokeCap = StrokeCap.round;
    var path1 = Path();
    path1.moveTo(26.6654, 2.0);
    path1.lineTo(20.4045, 3.87826);
    path1.cubicTo(20.1569, 3.95255, 19.9745, 4.16334, 19.9366, 4.41911);
    path1.lineTo(17.332, 22.0);

    canvas.drawPath(path1, paint1);
  }

  path2(Canvas canvas, Size size) {
    Paint paint2 = Paint();
    paint2.style = PaintingStyle.stroke;
    paint2.color = Color.fromARGB(255, 255, 255, 255);
    paint2.strokeWidth = 2;
    paint2.strokeCap = StrokeCap.round;
    var path2 = Path();
    path2.moveTo(7.33301, 14.0);
    path2.lineTo(23.333, 14.0);

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(_CafeIconPainter oldDelegate) => false;
}

class _CafeIcon extends StatelessWidget {
  final Widget child;
  final Color color;

  const _CafeIcon({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 32 / 32,
      child: CustomPaint(
        painter: _CafeIconPainter(),
        child: child,
      ),
    );
  }
}
