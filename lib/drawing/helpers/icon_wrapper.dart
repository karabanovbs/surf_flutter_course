import 'package:flutter/widgets.dart';

class IconWrapper extends StatelessWidget {
  final Widget child;

  const IconWrapper({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        IconTheme.of(context).color,
        BlendMode.srcIn,
      ),
      child: child,
    );
  }
}
