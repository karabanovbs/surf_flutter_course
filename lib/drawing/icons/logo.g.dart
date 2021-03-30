// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logo.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/logo.svg

// <svg width="160" height="160" viewBox="0 0 160 160" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M80 160C124.183 160 160 124.183 160 80C160 35.8172 124.183 0 80 0C35.8172 0 0 35.8172 0 80C0 124.183 35.8172 160 80 160ZM91.25 41.8113V55.5469V100.823C91.25 102.101 90.6393 103.302 89.6067 104.055L68.9853 119.091C68.0466 119.755 66.75 119.084 66.75 117.934V110.297V58.8542C66.75 57.5762 67.3607 56.3751 68.3933 55.6222L88.9576 40.6274C89.919 39.9449 91.25 40.6323 91.25 41.8113ZM100.893 109.795C99.8607 109.042 99.25 107.841 99.25 106.563V47.8423C99.25 46.5337 100.735 45.7785 101.793 46.5495L118.357 58.6274C119.389 59.3803 120 60.5814 120 61.8594V115.859C120 117.365 119.155 118.743 117.813 119.425C116.471 120.107 114.86 119.978 113.643 119.091L100.893 109.795ZM57.2401 49.2801L46.4901 40.729C45.2883 39.773 43.6454 39.5895 42.2622 40.2566C40.8791 40.9237 40 42.3238 40 43.8594V97.8594C40 99.0784 40.5559 100.231 41.5099 100.99L56.154 112.638C57.2023 113.472 58.75 112.726 58.75 111.386V52.4105C58.75 51.1915 58.1941 50.039 57.2401 49.2801Z" fill="white"/>
// </svg>
//

class _LogoIconPainter extends CustomPainter {
  final originalHeight = 160;
  final originalWidth = 160;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 160, size.height / 160);

    path0(canvas, size);
  }

  path0(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = Color.fromARGB(255, 255, 255, 255);
    var path0 = Path();
    path0.fillType = PathFillType.evenOdd;
    path0.moveTo(80.0, 160.0);
    path0.cubicTo(124.183, 160.0, 160.0, 124.183, 160.0, 80.0);
    path0.cubicTo(160.0, 35.8172, 124.183, 0.0, 80.0, 0.0);
    path0.cubicTo(35.8172, 0.0, 0.0, 35.8172, 0.0, 80.0);
    path0.cubicTo(0.0, 124.183, 35.8172, 160.0, 80.0, 160.0);
    path0.close();
    path0.moveTo(91.25, 41.8113);
    path0.lineTo(91.25, 55.5469);
    path0.lineTo(91.25, 100.823);
    path0.cubicTo(91.25, 102.101, 90.6393, 103.302, 89.6067, 104.055);
    path0.lineTo(68.9853, 119.091);
    path0.cubicTo(68.0466, 119.755, 66.75, 119.084, 66.75, 117.934);
    path0.lineTo(66.75, 110.297);
    path0.lineTo(66.75, 58.8542);
    path0.cubicTo(66.75, 57.5762, 67.3607, 56.3751, 68.3933, 55.6222);
    path0.lineTo(88.9576, 40.6274);
    path0.cubicTo(89.919, 39.9449, 91.25, 40.6323, 91.25, 41.8113);
    path0.close();
    path0.moveTo(100.893, 109.795);
    path0.cubicTo(99.8607, 109.042, 99.25, 107.841, 99.25, 106.563);
    path0.lineTo(99.25, 47.8423);
    path0.cubicTo(99.25, 46.5337, 100.735, 45.7785, 101.793, 46.5495);
    path0.lineTo(118.357, 58.6274);
    path0.cubicTo(119.389, 59.3803, 120.0, 60.5814, 120.0, 61.8594);
    path0.lineTo(120.0, 115.859);
    path0.cubicTo(120.0, 117.365, 119.155, 118.743, 117.813, 119.425);
    path0.cubicTo(116.471, 120.107, 114.86, 119.978, 113.643, 119.091);
    path0.lineTo(100.893, 109.795);
    path0.close();
    path0.moveTo(57.2401, 49.2801);
    path0.lineTo(46.4901, 40.729);
    path0.cubicTo(45.2883, 39.773, 43.6454, 39.5895, 42.2622, 40.2566);
    path0.cubicTo(40.8791, 40.9237, 40.0, 42.3238, 40.0, 43.8594);
    path0.lineTo(40.0, 97.8594);
    path0.cubicTo(40.0, 99.0784, 40.5559, 100.231, 41.5099, 100.99);
    path0.lineTo(56.154, 112.638);
    path0.cubicTo(57.2023, 113.472, 58.75, 112.726, 58.75, 111.386);
    path0.lineTo(58.75, 52.4105);
    path0.cubicTo(58.75, 51.1915, 58.1941, 50.039, 57.2401, 49.2801);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_LogoIconPainter oldDelegate) => false;
}

class _LogoIcon extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const _LogoIcon({
    Key? key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 160 / 160,
      child: CustomPaint(
        painter: _LogoIconPainter(),
        child: child,
      ),
    );
  }
}
