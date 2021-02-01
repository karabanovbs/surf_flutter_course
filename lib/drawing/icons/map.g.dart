// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/map.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M2.56556 2.09931C2.91134 1.93253 3.32208 1.97842 3.62252 2.21741L8.6835 6.24318L14.2394 2.192C14.5905 1.93601 15.0667 1.93601 15.4177 2.192L21.5892 6.692C21.8473 6.88024 22 7.18051 22 7.50001V21C22 21.3764 21.7887 21.7208 21.4532 21.8914C21.1178 22.062 20.7149 22.0298 20.4108 21.808L14.8286 17.7376L9.24632 21.808C8.88271 22.0731 8.38679 22.0627 8.03462 21.7826L2.37748 17.2826C2.13897 17.0929 2 16.8048 2 16.5V3.00001C2 2.61611 2.21978 2.26609 2.56556 2.09931ZM13.8281 4.96711L9.64062 8.0205V19.0453L13.8281 15.9919V4.96711ZM15.8281 4.96646V15.9912L20 19.0332V8.00845L15.8281 4.96646ZM4 5.07325L7.64062 7.9692V18.9136L4 16.0177V5.07325Z" fill="white"/>
// </svg>
//

class _MapIconPainter extends CustomPainter {
  final originalHeight = 24;
  final originalWidth = 24;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 24, size.height / 24);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(2.56556, 2.09931);
    path0.cubicTo(2.91134, 1.9325299999999999, 3.32208, 1.9784199999999998,
        3.62252, 2.21741);
    path0.lineTo(8.6835, 6.24318);
    path0.lineTo(14.2394, 2.192);
    path0.cubicTo(14.5905, 1.93601, 15.0667, 1.93601, 15.4177, 2.192);
    path0.lineTo(21.5892, 6.692);
    path0.cubicTo(21.8473, 6.880240000000001, 22.0, 7.18051, 22.0, 7.50001);
    path0.lineTo(22.0, 21.0);
    path0.cubicTo(22.0, 21.3764, 21.7887, 21.7208, 21.4532, 21.8914);
    path0.cubicTo(
        21.1178, 22.062, 20.7149, 22.0298, 20.410800000000002, 21.808);
    path0.lineTo(14.8286, 17.7376);
    path0.lineTo(9.24632, 21.808);
    path0.cubicTo(8.88271, 22.0731, 8.38679, 22.0627, 8.03462, 21.7826);
    path0.lineTo(2.3774800000000003, 17.2826);
    path0.cubicTo(2.13897, 17.0929, 2.0, 16.8048, 2.0, 16.5);
    path0.lineTo(2.0, 3.00001);
    path0.cubicTo(2.0, 2.61611, 2.21978, 2.26609, 2.56556, 2.09931);
    path0.close();
    path0.moveTo(13.8281, 4.96711);
    path0.lineTo(9.64062, 8.0205);
    path0.lineTo(9.64062, 19.0453);
    path0.lineTo(13.8281, 15.9919);
    path0.lineTo(13.8281, 4.96711);
    path0.close();
    path0.moveTo(15.8281, 4.96646);
    path0.lineTo(15.8281, 15.9912);
    path0.lineTo(20.0, 19.0332);
    path0.lineTo(20.0, 8.00845);
    path0.lineTo(15.8281, 4.96646);
    path0.close();
    path0.moveTo(4.0, 5.07325);
    path0.lineTo(7.64062, 7.9692);
    path0.lineTo(7.64062, 18.9136);
    path0.lineTo(4.0, 16.0177);
    path0.lineTo(4.0, 5.07325);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_MapIconPainter oldDelegate) => false;
}

class _MapIcon extends StatelessWidget {
  final Widget child;
  final Color color;

  const _MapIcon({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 24 / 24,
      child: CustomPaint(
        painter: _MapIconPainter(),
        child: child,
      ),
    );
  }
}

// SvgToPath for res/svg/map_full.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M14.8125 5.92188V2.48798C14.8125 2.19323 14.4798 2.02138 14.2394 2.192L9.09833 5.9407C8.84017 6.12894 8.6875 6.42921 8.6875 6.74871V19.6094V21.5187C8.6875 21.8061 9.01166 21.9739 9.24632 21.808L14.4017 18.0489C14.6598 17.8607 14.8125 17.5604 14.8125 17.2409V5.92188ZM16.8125 18.6758C16.8125 18.9953 16.9652 19.2956 17.2233 19.4838L20.4108 21.808C20.7149 22.0298 21.1178 22.062 21.4532 21.8914C21.7887 21.7208 22 21.3764 22 21V7.50001C22 7.18051 21.8473 6.88024 21.5892 6.692L17.4482 3.67252C17.1838 3.47978 16.8125 3.66858 16.8125 3.99572V18.6758ZM3.62252 2.21741L6.31002 4.35519C6.54853 4.54491 6.6875 4.83304 6.6875 5.13779V19.8817C6.6875 20.2166 6.30057 20.4033 6.03849 20.1948L2.37748 17.2826C2.13897 17.0929 2 16.8048 2 16.5V3.00001C2 2.61611 2.21978 2.26609 2.56556 2.09931C2.91134 1.93253 3.32208 1.97842 3.62252 2.21741Z" fill="white"/>
// </svg>
//

class _MapFullIconPainter extends CustomPainter {
  final originalHeight = 24;
  final originalWidth = 24;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 24, size.height / 24);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(14.8125, 5.92188);
    path0.lineTo(14.8125, 2.4879800000000003);
    path0.cubicTo(14.8125, 2.1932300000000002, 14.479800000000001, 2.02138,
        14.2394, 2.192);
    path0.lineTo(9.09833, 5.9407);
    path0.cubicTo(8.84017, 6.12894, 8.6875, 6.42921, 8.6875, 6.74871);
    path0.lineTo(8.6875, 19.6094);
    path0.lineTo(8.6875, 21.5187);
    path0.cubicTo(8.6875, 21.8061, 9.01166, 21.9739, 9.24632, 21.808);
    path0.lineTo(14.4017, 18.0489);
    path0.cubicTo(14.6598, 17.8607, 14.8125, 17.5604, 14.8125, 17.2409);
    path0.lineTo(14.8125, 5.92188);
    path0.close();
    path0.moveTo(16.8125, 18.6758);
    path0.cubicTo(16.8125, 18.9953, 16.9652, 19.2956, 17.2233, 19.4838);
    path0.lineTo(20.410800000000002, 21.808);
    path0.cubicTo(20.7149, 22.0298, 21.1178, 22.062, 21.4532, 21.8914);
    path0.cubicTo(21.7887, 21.7208, 22.0, 21.3764, 22.0, 21.0);
    path0.lineTo(22.0, 7.50001);
    path0.cubicTo(22.0, 7.18051, 21.8473, 6.880240000000001, 21.5892, 6.692);
    path0.lineTo(17.4482, 3.67252);
    path0.cubicTo(17.1838, 3.47978, 16.8125, 3.66858, 16.8125, 3.99572);
    path0.lineTo(16.8125, 18.6758);
    path0.close();
    path0.moveTo(3.62252, 2.21741);
    path0.lineTo(6.31002, 4.35519);
    path0.cubicTo(6.5485299999999995, 4.54491, 6.6875, 4.8330400000000004,
        6.6875, 5.13779);
    path0.lineTo(6.6875, 19.8817);
    path0.cubicTo(
        6.6875, 20.2166, 6.3005700000000004, 20.4033, 6.03849, 20.1948);
    path0.lineTo(2.3774800000000003, 17.2826);
    path0.cubicTo(2.13897, 17.0929, 2.0, 16.8048, 2.0, 16.5);
    path0.lineTo(2.0, 3.00001);
    path0.cubicTo(2.0, 2.61611, 2.21978, 2.26609, 2.56556, 2.09931);
    path0.cubicTo(2.91134, 1.9325299999999999, 3.32208, 1.9784199999999998,
        3.62252, 2.21741);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_MapFullIconPainter oldDelegate) => false;
}

class _MapFullIcon extends StatelessWidget {
  final Widget child;
  final Color color;

  const _MapFullIcon({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 24 / 24,
      child: CustomPaint(
        painter: _MapFullIconPainter(),
        child: child,
      ),
    );
  }
}
