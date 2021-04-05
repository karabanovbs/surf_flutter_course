// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/photo.svg

// <svg width="22" height="18" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M3 0.5H19C20.6569 0.5 22 1.84314 22 3.5V14.5C22 16.1569 20.6569 17.5 19 17.5H3C1.34315 17.5 0 16.1569 0 14.5V3.5C0 1.84315 1.34315 0.5 3 0.5ZM3 2.5C2.44772 2.5 2 2.94772 2 3.5V14.5C2 15.0523 2.44772 15.5 3 15.5H19C19.5523 15.5 20 15.0523 20 14.5V3.5C20 2.94772 19.5523 2.5 19 2.5H3Z" fill="white"/>
// <path fill-rule="evenodd" clip-rule="evenodd" d="M7.62521 7C7.92823 7 8.21491 7.1374 8.40472 7.37361L13.269 13.427L15.8609 10.3551C16.0509 10.1299 16.3306 10 16.6252 10C16.9199 10 17.1995 10.1299 17.3895 10.3551L20.7645 14.3551L19.2359 15.6449L16.6252 12.5507L14.0145 15.6449C13.8218 15.8733 13.537 16.0035 13.2382 15.9999C12.9394 15.9964 12.6579 15.8593 12.4707 15.6264L7.62521 9.59645L2.77972 15.6264L1.2207 14.3736L6.8457 7.37361C7.03551 7.1374 7.32219 7 7.62521 7Z" fill="white"/>
// <circle cx="14" cy="6.5" r="2" fill="white"/>
// </svg>
//

class _PhotoIconPainter extends CustomPainter {
  const _PhotoIconPainter();

  final originalHeight = 18;
  final originalWidth = 22;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 22, size.height / 18);

    path0(canvas, size);
    path1(canvas, size);
    circle2(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(3.0, 0.5);
    path0.lineTo(19.0, 0.5);
    path0.cubicTo(20.6569, 0.5, 22.0, 1.84314, 22.0, 3.5);
    path0.lineTo(22.0, 14.5);
    path0.cubicTo(22.0, 16.1569, 20.6569, 17.5, 19.0, 17.5);
    path0.lineTo(3.0, 17.5);
    path0.cubicTo(1.34315, 17.5, 0.0, 16.1569, 0.0, 14.5);
    path0.lineTo(0.0, 3.5);
    path0.cubicTo(0.0, 1.84315, 1.34315, 0.5, 3.0, 0.5);
    path0.close();
    path0.moveTo(3.0, 2.5);
    path0.cubicTo(2.44772, 2.5, 2.0, 2.9477200000000003, 2.0, 3.5);
    path0.lineTo(2.0, 14.5);
    path0.cubicTo(2.0, 15.0523, 2.44772, 15.5, 3.0, 15.5);
    path0.lineTo(19.0, 15.5);
    path0.cubicTo(19.5523, 15.5, 20.0, 15.0523, 20.0, 14.5);
    path0.lineTo(20.0, 3.5);
    path0.cubicTo(20.0, 2.9477200000000003, 19.5523, 2.5, 19.0, 2.5);
    path0.lineTo(3.0, 2.5);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  path1(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1.color = Color.fromARGB(255, 255, 255, 255);
    var path1 = Path();
    path1.fillType = PathFillType.evenOdd;
    path1.moveTo(7.62521, 7.0);
    path1.cubicTo(7.92823, 7.0, 8.21491, 7.1374, 8.40472, 7.37361);
    path1.lineTo(13.269, 13.427);
    path1.lineTo(15.8609, 10.3551);
    path1.cubicTo(16.0509, 10.1299, 16.3306, 10.0, 16.6252, 10.0);
    path1.cubicTo(16.9199, 10.0, 17.1995, 10.1299, 17.3895, 10.3551);
    path1.lineTo(20.7645, 14.3551);
    path1.lineTo(19.2359, 15.6449);
    path1.lineTo(16.6252, 12.5507);
    path1.lineTo(14.0145, 15.6449);
    path1.cubicTo(13.8218, 15.8733, 13.537, 16.0035, 13.2382, 15.9999);
    path1.cubicTo(12.9394, 15.9964, 12.6579, 15.8593, 12.4707, 15.6264);
    path1.lineTo(7.62521, 9.59645);
    path1.lineTo(2.77972, 15.6264);
    path1.lineTo(1.2207000000000001, 14.3736);
    path1.lineTo(6.8457, 7.37361);
    path1.cubicTo(7.03551, 7.1374, 7.32219, 7.0, 7.62521, 7.0);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  circle2(Canvas canvas, Size size) {
    final Rect oval2 = Rect.fromCircle(center: Offset(14, 6.5), radius: 2);
    Paint paint2 = Paint();
    paint2.color = Color.fromARGB(255, 255, 255, 255);
    var path2 = Path()..addOval(oval2);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(_PhotoIconPainter oldDelegate) => false;
}

class _PhotoIcon extends StatelessWidget {
  const _PhotoIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 22 / 18,
      child: const CustomPaint(
        painter: const _PhotoIconPainter(),
      ),
    );
  }
}
