// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/search.svg

// <svg width="20" height="18" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M2 9C2 5.13401 5.13401 2 9 2C12.866 2 16 5.13401 16 9C16 10.5418 15.5027 11.9646 14.6595 13.1205C14.6008 13.2009 14.5558 13.2872 14.5242 13.3765C14.4996 13.3984 14.4758 13.4217 14.453 13.4464C14.0782 13.852 14.1032 14.4847 14.5089 14.8595L17.3839 17.5158C17.7895 17.8905 18.4222 17.8655 18.797 17.4599C19.1718 17.0542 19.1468 16.4215 18.7411 16.0468L16.5001 13.9763C17.4477 12.5507 18 10.8386 18 9C18 4.02944 13.9706 0 9 0C4.02944 0 0 4.02944 0 9C0 13.9706 4.02944 18 9 18C10.435 18 11.7943 17.6634 13.0006 17.0639C13.4952 16.8182 13.6969 16.218 13.4511 15.7234C13.2053 15.2288 12.6051 15.0271 12.1105 15.2729C11.1746 15.738 10.1193 16 9 16C5.13401 16 2 12.866 2 9Z" fill="white"/>
// </svg>
//

class _SearchIconPainter extends CustomPainter {
  final originalHeight = 18;
  final originalWidth = 20;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 20, size.height / 18);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(2.0, 9.0);
    path0.cubicTo(2.0, 5.13401, 5.13401, 2.0, 9.0, 2.0);
    path0.cubicTo(12.866, 2.0, 16.0, 5.13401, 16.0, 9.0);
    path0.cubicTo(16.0, 10.5418, 15.5027, 11.9646, 14.6595, 13.1205);
    path0.cubicTo(14.6008, 13.2009, 14.5558, 13.2872, 14.5242, 13.3765);
    path0.cubicTo(
        14.499600000000001, 13.3984, 14.4758, 13.4217, 14.453, 13.4464);
    path0.cubicTo(14.0782, 13.852, 14.1032, 14.4847, 14.5089, 14.8595);
    path0.lineTo(17.3839, 17.5158);
    path0.cubicTo(17.7895, 17.8905, 18.4222, 17.8655, 18.797, 17.4599);
    path0.cubicTo(19.1718, 17.0542, 19.1468, 16.4215, 18.7411, 16.0468);
    path0.lineTo(16.5001, 13.9763);
    path0.cubicTo(17.4477, 12.5507, 18.0, 10.8386, 18.0, 9.0);
    path0.cubicTo(18.0, 4.02944, 13.9706, 0.0, 9.0, 0.0);
    path0.cubicTo(4.02944, 0.0, 0.0, 4.02944, 0.0, 9.0);
    path0.cubicTo(0.0, 13.9706, 4.02944, 18.0, 9.0, 18.0);
    path0.cubicTo(10.435, 18.0, 11.7943, 17.6634, 13.0006, 17.0639);
    path0.cubicTo(13.4952, 16.8182, 13.6969, 16.218, 13.4511, 15.7234);
    path0.cubicTo(13.2053, 15.2288, 12.6051, 15.0271, 12.1105, 15.2729);
    path0.cubicTo(11.1746, 15.738, 10.1193, 16.0, 9.0, 16.0);
    path0.cubicTo(5.13401, 16.0, 2.0, 12.866, 2.0, 9.0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_SearchIconPainter oldDelegate) => false;
}

class _SearchIcon extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const _SearchIcon({
    Key? key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 18,
      child: CustomPaint(
        painter: _SearchIconPainter(),
        child: child,
      ),
    );
  }
}
