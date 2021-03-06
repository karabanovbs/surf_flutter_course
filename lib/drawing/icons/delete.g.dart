// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/delete.svg

// <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M1.00746 1.00731C1.39801 0.616815 2.03118 0.616858 2.42167 1.00741L6.00003 4.58626L9.57839 1.00741C9.96889 0.616858 10.6021 0.616815 10.9926 1.00731C11.3832 1.39781 11.3832 2.03098 10.9927 2.42153L7.41415 6.00057L10.9923 9.57925C11.3828 9.9698 11.3828 10.603 10.9923 10.9935C10.6017 11.384 9.96854 11.3839 9.57804 10.9934L6.00003 7.41488L2.42203 10.9934C2.03153 11.3839 1.39836 11.384 1.00781 10.9935C0.617263 10.603 0.61722 9.9698 1.00772 9.57925L4.58592 6.00057L1.00736 2.42153C0.616866 2.03098 0.616909 1.39781 1.00746 1.00731Z" fill="white"/>
// </svg>
//

class _DeleteIconPainter extends CustomPainter {
  const _DeleteIconPainter();

  final originalHeight = 12;
  final originalWidth = 12;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 12, size.height / 12);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(1.00746, 1.00731);
    path0.cubicTo(1.3980100000000002, 0.6168150000000001, 2.03118,
        0.6168580000000001, 2.42167, 1.00741);
    path0.lineTo(6.00003, 4.58626);
    path0.lineTo(9.57839, 1.00741);
    path0.cubicTo(9.96889, 0.6168580000000001, 10.6021, 0.6168150000000001,
        10.9926, 1.00731);
    path0.cubicTo(
        11.3832, 1.3978100000000002, 11.3832, 2.03098, 10.9927, 2.42153);
    path0.lineTo(7.41415, 6.00057);
    path0.lineTo(10.9923, 9.57925);
    path0.cubicTo(11.3828, 9.9698, 11.3828, 10.603, 10.9923, 10.9935);
    path0.cubicTo(
        10.601700000000001, 11.384, 9.96854, 11.3839, 9.57804, 10.9934);
    path0.lineTo(6.00003, 7.41488);
    path0.lineTo(2.42203, 10.9934);
    path0.cubicTo(2.03153, 11.3839, 1.39836, 11.384, 1.00781, 10.9935);
    path0.cubicTo(
        0.617263, 10.603, 0.6172200000000001, 9.9698, 1.00772, 9.57925);
    path0.lineTo(4.58592, 6.00057);
    path0.lineTo(1.00736, 2.42153);
    path0.cubicTo(0.616866, 2.03098, 0.6169090000000002, 1.3978100000000002,
        1.00746, 1.00731);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_DeleteIconPainter oldDelegate) => false;
}

class _DeleteIcon extends StatelessWidget {
  const _DeleteIcon();

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 12 / 12,
      child: const CustomPaint(
        painter: const _DeleteIconPainter(),
      ),
    );
  }
}
