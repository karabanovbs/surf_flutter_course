import 'package:flutter/material.dart';

class OverscrollIndicatorNotificationAbsorb extends StatelessWidget {
  final Widget child;

  const OverscrollIndicatorNotificationAbsorb({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: child,
    );
  }
}
