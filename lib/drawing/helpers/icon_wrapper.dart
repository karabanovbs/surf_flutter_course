import 'package:flutter/widgets.dart';

/// Widget for compatibility any drawing resources like Image or svg custom
/// painter with [IconTheme]
class IconWrapper extends StatelessWidget {
  final Widget child;
  final Color color;

  const IconWrapper({
    Key key,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        color ?? IconTheme.of(context).color,
        BlendMode.srcIn,
      ),
      child: child,
    );
  }
}
