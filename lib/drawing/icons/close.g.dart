// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close.dart';

// **************************************************************************
// SvgToPathGenerator
// **************************************************************************

// SvgToPath for res/svg/close.svg

// <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M5.29294 5.29285C5.68349 4.90235 6.31666 4.90239 6.70715 5.29294L11.998 10.5846L17.2889 5.29294C17.6794 4.90239 18.3126 4.90235 18.7032 5.29285C19.0937 5.68334 19.0937 6.31651 18.7032 6.70706L13.4122 11.9989L18.7028 17.2902C19.0933 17.6807 19.0932 18.3139 18.7027 18.7044C18.3121 19.0949 17.6789 19.0948 17.2884 18.7043L11.998 13.4132L6.70765 18.7043C6.31715 19.0948 5.68399 19.0949 5.29344 18.7044C4.90289 18.3139 4.90284 17.6807 5.29334 17.2902L10.5839 11.9989L5.29285 6.70706C4.90235 6.31651 4.90239 5.68334 5.29294 5.29285Z" fill="white"/>
// </svg>
//

class _CloseIconPainter extends CustomPainter {
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
    path0.moveTo(5.29294, 5.29285);
    path0.cubicTo(
        5.68349, 4.90235, 6.31666, 4.9023900000000005, 6.70715, 5.29294);
    path0.lineTo(11.998, 10.5846);
    path0.lineTo(17.2889, 5.29294);
    path0.cubicTo(
        17.6794, 4.9023900000000005, 18.3126, 4.90235, 18.7032, 5.29285);
    path0.cubicTo(19.0937, 5.68334, 19.0937, 6.31651, 18.7032, 6.70706);
    path0.lineTo(13.4122, 11.9989);
    path0.lineTo(18.7028, 17.2902);
    path0.cubicTo(19.0933, 17.6807, 19.0932, 18.3139, 18.7027, 18.7044);
    path0.cubicTo(18.3121, 19.0949, 17.6789, 19.0948, 17.2884, 18.7043);
    path0.lineTo(11.998, 13.4132);
    path0.lineTo(6.70765, 18.7043);
    path0.cubicTo(
        6.31715, 19.0948, 5.6839900000000005, 19.0949, 5.29344, 18.7044);
    path0.cubicTo(4.90289, 18.3139, 4.90284, 17.6807, 5.29334, 17.2902);
    path0.lineTo(10.5839, 11.9989);
    path0.lineTo(5.29285, 6.70706);
    path0.cubicTo(
        4.90235, 6.31651, 4.9023900000000005, 5.68334, 5.29294, 5.29285);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(_CloseIconPainter oldDelegate) => false;
}

class _CloseIcon extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const _CloseIcon({
    Key? key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 24 / 24,
      child: CustomPaint(
        painter: _CloseIconPainter(),
        child: child,
      ),
    );
  }
}
