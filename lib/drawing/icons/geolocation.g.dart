// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/geolocation.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M18.9233 5.08452C18.8433 4.99983 18.72 4.97622 18.6156 5.02537L5.15801 11.3512C5.04983 11.4023 4.98666 11.5192 5.00239 11.6403C5.01811 11.7614 5.10894 11.8575 5.22634 11.8774L11.2625 12.9135L11.9526 18.7556C11.9672 18.8773 12.058 18.9753 12.176 18.9958C12.1914 18.9986 12.2066 19 12.2218 19C12.3235 19 12.4186 18.9414 12.4647 18.8456L18.9719 5.40109C19.0228 5.29585 19.0033 5.16894 18.9233 5.08452Z" fill="white"/>
// </svg>
//

class _GeolocationIconPainter extends CustomPainter {
  const _GeolocationIconPainter();

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
    path0.moveTo(18.9233, 5.08452);
    path0.cubicTo(18.8433, 4.99983, 18.72, 4.97622, 18.6156, 5.02537);
    path0.lineTo(5.15801, 11.3512);
    path0.cubicTo(5.04983, 11.4023, 4.98666, 11.5192, 5.00239, 11.6403);
    path0.cubicTo(5.01811, 11.7614, 5.10894, 11.8575, 5.22634, 11.8774);
    path0.lineTo(11.2625, 12.913499999999999);
    path0.lineTo(11.9526, 18.7556);
    path0.cubicTo(11.9672, 18.8773, 12.058, 18.9753, 12.176, 18.9958);
    path0.cubicTo(12.1914, 18.9986, 12.2066, 19.0, 12.2218, 19.0);
    path0.cubicTo(12.3235, 19.0, 12.4186, 18.9414, 12.4647, 18.8456);
    path0.lineTo(18.9719, 5.40109);
    path0.cubicTo(19.0228, 5.29585, 19.0033, 5.16894, 18.9233, 5.08452);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_GeolocationIconPainter oldDelegate) => false;
}

class _GeolocationIcon extends StatelessWidget {
  const _GeolocationIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 24 / 24,
      child: const CustomPaint(
        painter: const _GeolocationIconPainter(),
      ),
    );
  }
}
