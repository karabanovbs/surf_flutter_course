// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/info.svg

// <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM20 10C20 15.5228 15.5228 20 10 20C4.47715 20 0 15.5228 0 10C0 4.47715 4.47715 0 10 0C15.5228 0 20 4.47715 20 10ZM8.86133 7.60352V15H10.8438V7.60352H8.86133ZM9.03906 4.95801C8.8431 5.14941 8.74512 5.39323 8.74512 5.68945C8.74512 5.99023 8.84538 6.23633 9.0459 6.42773C9.25098 6.61914 9.51986 6.71484 9.85254 6.71484C10.1852 6.71484 10.4518 6.61914 10.6523 6.42773C10.8574 6.23633 10.96 5.99023 10.96 5.68945C10.96 5.39323 10.8597 5.14941 10.6592 4.95801C10.4587 4.7666 10.1898 4.6709 9.85254 4.6709C9.51074 4.6709 9.23958 4.7666 9.03906 4.95801Z" fill="white"/>
// </svg>
//

class _InfoIconPainter extends CustomPainter {
  final originalHeight = 20;
  final originalWidth = 20;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 20, size.height / 20);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(18.0, 10.0);
    path0.cubicTo(18.0, 14.4183, 14.4183, 18.0, 10.0, 18.0);
    path0.cubicTo(5.58172, 18.0, 2.0, 14.4183, 2.0, 10.0);
    path0.cubicTo(2.0, 5.58172, 5.58172, 2.0, 10.0, 2.0);
    path0.cubicTo(14.4183, 2.0, 18.0, 5.58172, 18.0, 10.0);
    path0.close();
    path0.moveTo(20.0, 10.0);
    path0.cubicTo(20.0, 15.5228, 15.5228, 20.0, 10.0, 20.0);
    path0.cubicTo(4.47715, 20.0, 0.0, 15.5228, 0.0, 10.0);
    path0.cubicTo(0.0, 4.47715, 4.47715, 0.0, 10.0, 0.0);
    path0.cubicTo(15.5228, 0.0, 20.0, 4.47715, 20.0, 10.0);
    path0.close();
    path0.moveTo(8.86133, 7.60352);
    path0.lineTo(8.86133, 15.0);
    path0.lineTo(10.8438, 15.0);
    path0.lineTo(10.8438, 7.60352);
    path0.lineTo(8.86133, 7.60352);
    path0.close();
    path0.moveTo(9.03906, 4.95801);
    path0.cubicTo(8.8431, 5.14941, 8.74512, 5.39323, 8.74512, 5.68945);
    path0.cubicTo(8.74512, 5.99023, 8.84538, 6.23633, 9.0459, 6.42773);
    path0.cubicTo(9.25098, 6.61914, 9.51986, 6.714840000000001, 9.85254,
        6.714840000000001);
    path0.cubicTo(
        10.1852, 6.714840000000001, 10.4518, 6.61914, 10.6523, 6.42773);
    path0.cubicTo(10.8574, 6.23633, 10.96, 5.99023, 10.96, 5.68945);
    path0.cubicTo(10.96, 5.39323, 10.8597, 5.14941, 10.6592, 4.95801);
    path0.cubicTo(10.4587, 4.7666, 10.1898, 4.6709000000000005, 9.85254,
        4.6709000000000005);
    path0.cubicTo(
        9.51074, 4.6709000000000005, 9.23958, 4.7666, 9.03906, 4.95801);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_InfoIconPainter oldDelegate) => false;
}

class _InfoIcon extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const _InfoIcon({
    Key? key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 20,
      child: CustomPaint(
        painter: _InfoIconPainter(),
        child: child,
      ),
    );
  }
}
