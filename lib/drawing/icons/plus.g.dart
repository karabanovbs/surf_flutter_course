// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plus.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/plus.svg

// <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M1.6377 7.99976L8.00002 8.00019M8.00002 8.00019L14.3618 8.00062M8.00002 8.00019L7.99958 1.63787M8.00002 8.00019L8.00045 14.362" stroke="white" stroke-width="2" stroke-linecap="round"/>
// </svg>
//

class _PlusIconPainter extends CustomPainter {
  final originalHeight = 16;
  final originalWidth = 16;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 16, size.height / 16);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.moveTo(1.6377000000000002, 7.99976);
    path0.lineTo(8.00002, 8.00019);
    path0.moveTo(8.00002, 8.00019);
    path0.lineTo(14.3618, 8.00062);
    path0.moveTo(8.00002, 8.00019);
    path0.lineTo(7.99958, 1.6378700000000002);
    path0.moveTo(8.00002, 8.00019);
    path0.lineTo(8.00045, 14.362);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_PlusIconPainter oldDelegate) => false;
}

class _PlusIcon extends StatelessWidget {
  final Widget child;
  final Color color;

  const _PlusIcon({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 16,
      child: CustomPaint(
        painter: _PlusIconPainter(),
        child: child,
      ),
    );
  }
}
