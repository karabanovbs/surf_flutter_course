// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/heart.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M12.8879 20.5129C12.3354 20.8311 11.665 20.8291 11.1142 20.5081C9.1283 19.3505 4.35906 16.2518 2.63221 12.3044C1.57014 9.89998 1.68278 5.99686 4.24139 4.21822C5.38325 3.29398 6.83566 2.86886 8.28234 3.03543C9.72903 3.20199 11.0873 3.83922 12 5C12.9127 3.83922 14.202 3.20199 15.6487 3.03543C17.0953 2.86886 18.5478 3.29398 19.6896 4.21822C22.3126 5.99686 22.4252 9.88351 21.3953 12.3044C19.7166 16.2573 14.8908 19.3591 12.8879 20.5129Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// <path d="M18 7.00024C18.9345 7.65802 19.3391 9.62403 18.6648 11.0002" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// </svg>
//

class _HeartIconPainter extends CustomPainter {
  const _HeartIconPainter();

  final originalHeight = 24;
  final originalWidth = 24;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 24, size.height / 24);

    path0(canvas, size);
    path1(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.style = PaintingStyle.stroke;
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    paint0.strokeWidth = 2;
    paint0.strokeCap = StrokeCap.round;
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(12.8879, 20.5129);
    path0.cubicTo(
        12.3354, 20.8311, 11.665000000000001, 20.8291, 11.1142, 20.5081);
    path0.cubicTo(9.1283, 19.3505, 4.35906, 16.2518, 2.63221, 12.3044);
    path0.cubicTo(
        1.57014, 9.89998, 1.6827800000000002, 5.99686, 4.24139, 4.21822);
    path0.cubicTo(5.38325, 3.29398, 6.83566, 2.86886, 8.28234, 3.03543);
    path0.cubicTo(9.72903, 3.20199, 11.0873, 3.83922, 12.0, 5.0);
    path0.cubicTo(
        12.912700000000001, 3.83922, 14.202, 3.20199, 15.6487, 3.03543);
    path0.cubicTo(17.0953, 2.86886, 18.5478, 3.29398, 19.6896, 4.21822);
    path0.cubicTo(22.3126, 5.99686, 22.4252, 9.88351, 21.3953, 12.3044);
    path0.cubicTo(19.7166, 16.2573, 14.8908, 19.3591, 12.8879, 20.5129);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  path1(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1.style = PaintingStyle.stroke;
    paint1.color = Color.fromARGB(255, 255, 255, 255);
    paint1.strokeWidth = 2;
    paint1.strokeCap = StrokeCap.round;
    var path1 = Path();
    path1.moveTo(18.0, 7.00024);
    path1.cubicTo(
        18.9345, 7.6580200000000005, 19.3391, 9.62403, 18.6648, 11.0002);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(_HeartIconPainter oldDelegate) => false;
}

class _HeartIcon extends StatelessWidget {
  const _HeartIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 24 / 24,
      child: const CustomPaint(
        painter: const _HeartIconPainter(),
      ),
    );
  }
}

// SvgToPath for res/svg/heart_full.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M3.64047 3.41821C4.98475 2.34241 6.69253 1.84579 8.39671 2.042C9.69447 2.19142 10.9709 2.67699 11.9958 3.5569C12.9953 2.68309 14.2254 2.1927 15.5343 2.042C17.2365 1.84601 18.9424 2.34129 20.2859 3.41458C21.8662 4.50308 22.6464 6.19405 22.9009 7.87033C23.1563 9.55156 22.9026 11.3159 22.3155 12.6959C21.3872 14.8815 19.6252 16.766 17.9101 18.2209C16.181 19.6877 14.418 20.7855 13.387 21.3794C12.5237 21.8767 11.4708 21.8734 10.6106 21.372C9.58827 20.7761 7.84477 19.6783 6.12711 18.2133C4.4227 16.7596 2.66837 14.8812 1.71671 12.7068C1.10912 11.3303 0.847896 9.56463 1.08919 7.8845C1.32979 6.20916 2.09019 4.51085 3.64047 3.41821ZM18.5757 6.18253C18.124 5.86464 17.5002 5.97305 17.1823 6.42468C16.8645 6.87631 16.9729 7.50012 17.4245 7.81801C17.593 7.93662 17.8425 8.29933 17.9515 8.90728C18.0555 9.4878 17.9924 10.1 17.7669 10.5603C17.5239 11.0562 17.7289 11.6553 18.2249 11.8983C18.7209 12.1413 19.3199 11.9362 19.5629 11.4402C20.0116 10.5244 20.0834 9.4654 19.9201 8.55442C19.7617 7.67087 19.3417 6.72169 18.5757 6.18253Z" fill="white"/>
// </svg>
//

class _HeartFullIconPainter extends CustomPainter {
  const _HeartFullIconPainter();

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
    path0.moveTo(3.64047, 3.41821);
    path0.cubicTo(4.98475, 2.34241, 6.69253, 1.84579, 8.39671, 2.042);
    path0.cubicTo(9.69447, 2.19142, 10.9709, 2.67699, 11.9958, 3.5569);
    path0.cubicTo(12.9953, 2.68309, 14.2254, 2.1927, 15.5343, 2.042);
    path0.cubicTo(
        17.2365, 1.8460100000000002, 18.9424, 2.34129, 20.2859, 3.41458);
    path0.cubicTo(21.8662, 4.50308, 22.6464, 6.19405, 22.9009, 7.87033);
    path0.cubicTo(23.1563, 9.55156, 22.9026, 11.3159, 22.3155, 12.6959);
    path0.cubicTo(
        21.3872, 14.8815, 19.6252, 16.766000000000002, 17.9101, 18.2209);
    path0.cubicTo(16.181, 19.6877, 14.418, 20.7855, 13.387, 21.3794);
    path0.cubicTo(12.5237, 21.8767, 11.4708, 21.8734, 10.6106, 21.372);
    path0.cubicTo(
        9.58827, 20.7761, 7.8447700000000005, 19.6783, 6.12711, 18.2133);
    path0.cubicTo(
        4.4227, 16.7596, 2.6683700000000004, 14.8812, 1.71671, 12.7068);
    path0.cubicTo(
        1.10912, 11.3303, 0.8478960000000001, 9.56463, 1.08919, 7.8845);
    path0.cubicTo(1.32979, 6.20916, 2.09019, 4.51085, 3.64047, 3.41821);
    path0.close();
    path0.moveTo(18.5757, 6.18253);
    path0.cubicTo(
        18.124, 5.8646400000000005, 17.5002, 5.97305, 17.1823, 6.42468);
    path0.cubicTo(16.8645, 6.87631, 16.9729, 7.50012, 17.4245, 7.81801);
    path0.cubicTo(
        17.593, 7.9366200000000005, 17.8425, 8.29933, 17.9515, 8.90728);
    path0.cubicTo(18.0555, 9.4878, 17.9924, 10.1, 17.7669, 10.5603);
    path0.cubicTo(17.5239, 11.0562, 17.7289, 11.6553, 18.2249, 11.8983);
    path0.cubicTo(18.7209, 12.1413, 19.3199, 11.9362, 19.5629, 11.4402);
    path0.cubicTo(20.0116, 10.5244, 20.0834, 9.4654, 19.9201, 8.55442);
    path0.cubicTo(
        19.7617, 7.67087, 19.3417, 6.721690000000001, 18.5757, 6.18253);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_HeartFullIconPainter oldDelegate) => false;
}

class _HeartFullIcon extends StatelessWidget {
  const _HeartFullIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 24 / 24,
      child: const CustomPaint(
        painter: const _HeartFullIconPainter(),
      ),
    );
  }
}
