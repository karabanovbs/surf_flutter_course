// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/file.svg

// <svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M3 20H15C16.6569 20 18 18.6569 18 17V6.41421C18 5.61857 17.6839 4.8555 17.1213 4.29289L13.7071 0.87868C13.1445 0.316072 12.3814 0 11.5858 0H3C1.34315 0 0 1.34315 0 3V17C0 18.6569 1.34315 20 3 20ZM2 3C2 2.44772 2.44772 2 3 2H10V6.6C10 7.3732 10.6268 8 11.4 8H16V17C16 17.5523 15.5523 18 15 18H3C2.44772 18 2 17.5523 2 17V3ZM15.9102 6C15.861 5.89201 15.7926 5.79262 15.7071 5.70711L12.2929 2.29289C12.2074 2.20738 12.108 2.13896 12 2.08982V6H15.9102Z" fill="white"/>
// </svg>
//

class _FileIconPainter extends CustomPainter {
  const _FileIconPainter();

  final originalHeight = 20;
  final originalWidth = 18;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 18, size.height / 20);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(3.0, 20.0);
    path0.lineTo(15.0, 20.0);
    path0.cubicTo(16.6569, 20.0, 18.0, 18.6569, 18.0, 17.0);
    path0.lineTo(18.0, 6.41421);
    path0.cubicTo(18.0, 5.61857, 17.6839, 4.8555, 17.1213, 4.29289);
    path0.lineTo(13.7071, 0.8786800000000001);
    path0.cubicTo(13.1445, 0.3160720000000001, 12.3814, 0.0, 11.5858, 0.0);
    path0.lineTo(3.0, 0.0);
    path0.cubicTo(1.34315, 0.0, 0.0, 1.34315, 0.0, 3.0);
    path0.lineTo(0.0, 17.0);
    path0.cubicTo(0.0, 18.6569, 1.34315, 20.0, 3.0, 20.0);
    path0.close();
    path0.moveTo(2.0, 3.0);
    path0.cubicTo(2.0, 2.44772, 2.44772, 2.0, 3.0, 2.0);
    path0.lineTo(10.0, 2.0);
    path0.lineTo(10.0, 6.6);
    path0.cubicTo(10.0, 7.3732, 10.6268, 8.0, 11.4, 8.0);
    path0.lineTo(16.0, 8.0);
    path0.lineTo(16.0, 17.0);
    path0.cubicTo(16.0, 17.5523, 15.5523, 18.0, 15.0, 18.0);
    path0.lineTo(3.0, 18.0);
    path0.cubicTo(2.44772, 18.0, 2.0, 17.5523, 2.0, 17.0);
    path0.lineTo(2.0, 3.0);
    path0.close();
    path0.moveTo(15.9102, 6.0);
    path0.cubicTo(15.861, 5.89201, 15.7926, 5.79262, 15.7071, 5.70711);
    path0.lineTo(12.2929, 2.29289);
    path0.cubicTo(12.2074, 2.20738, 12.108, 2.13896, 12.0, 2.08982);
    path0.lineTo(12.0, 6.0);
    path0.lineTo(15.9102, 6.0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_FileIconPainter oldDelegate) => false;
}

class _FileIcon extends StatelessWidget {
  const _FileIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 18 / 20,
      child: const CustomPaint(
        painter: const _FileIconPainter(),
      ),
    );
  }
}
