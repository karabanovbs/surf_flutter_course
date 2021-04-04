// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/remove.svg

// <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M0 10C0 4.47715 4.47715 0 10 0C15.5228 0 20 4.47715 20 10C20 15.5228 15.5228 20 10 20C4.47715 20 0 15.5228 0 10ZM14.2071 14.2061C13.8166 14.5967 13.1834 14.5967 12.7929 14.2061L10.0006 11.4138L7.20726 14.2071C6.81673 14.5977 6.18357 14.5977 5.79304 14.2071C5.40252 13.8166 5.40252 13.1834 5.79304 12.7929L8.58636 9.9996L5.79289 7.20613C5.40237 6.81561 5.40237 6.18244 5.79289 5.79192C6.18342 5.40139 6.81658 5.40139 7.20711 5.79192L10.0006 8.58539L12.793 5.79292C13.1836 5.4024 13.8167 5.4024 14.2073 5.79292C14.5978 6.18345 14.5978 6.81661 14.2073 7.20714L11.4148 9.9996L14.2071 12.7919C14.5976 13.1824 14.5976 13.8156 14.2071 14.2061Z" fill="white"/>
// </svg>
//

class _RemoveIconPainter extends CustomPainter {
  const _RemoveIconPainter();

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
    path0.moveTo(0.0, 10.0);
    path0.cubicTo(0.0, 4.47715, 4.47715, 0.0, 10.0, 0.0);
    path0.cubicTo(15.5228, 0.0, 20.0, 4.47715, 20.0, 10.0);
    path0.cubicTo(20.0, 15.5228, 15.5228, 20.0, 10.0, 20.0);
    path0.cubicTo(4.47715, 20.0, 0.0, 15.5228, 0.0, 10.0);
    path0.close();
    path0.moveTo(14.2071, 14.2061);
    path0.cubicTo(13.8166, 14.5967, 13.1834, 14.5967, 12.7929, 14.2061);
    path0.lineTo(10.0006, 11.4138);
    path0.lineTo(7.20726, 14.2071);
    path0.cubicTo(6.81673, 14.5977, 6.18357, 14.5977, 5.79304, 14.2071);
    path0.cubicTo(5.40252, 13.8166, 5.40252, 13.1834, 5.79304, 12.7929);
    path0.lineTo(8.586359999999999, 9.999600000000001);
    path0.lineTo(5.79289, 7.20613);
    path0.cubicTo(5.40237, 6.81561, 5.40237, 6.18244, 5.79289, 5.79192);
    path0.cubicTo(6.18342, 5.40139, 6.81658, 5.40139, 7.20711, 5.79192);
    path0.lineTo(10.0006, 8.58539);
    path0.lineTo(12.793, 5.7929200000000005);
    path0.cubicTo(
        13.1836, 5.4024, 13.8167, 5.4024, 14.2073, 5.7929200000000005);
    path0.cubicTo(14.5978, 6.18345, 14.5978, 6.81661, 14.2073, 7.20714);
    path0.lineTo(11.4148, 9.999600000000001);
    path0.lineTo(14.2071, 12.7919);
    path0.cubicTo(14.5976, 13.1824, 14.5976, 13.8156, 14.2071, 14.2061);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_RemoveIconPainter oldDelegate) => false;
}

class _RemoveIcon extends StatelessWidget {
  const _RemoveIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 20 / 20,
      child: const CustomPaint(
        painter: const _RemoveIconPainter(),
      ),
    );
  }
}
