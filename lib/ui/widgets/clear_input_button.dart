import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class ClearInputButton extends StatelessWidget {
  final void Function()? onPressed;

  const ClearInputButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: Material(
        color: Theme.of(context).colorScheme.onBackground,
        shape: CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          focusNode: FocusNode(
            skipTraversal: true,
          ),
          onTap: onPressed,
          child: Center(
            child: SizedBox(
              width: 9,
              height: 9,
              child: IconWrapper(
                color: Theme.of(context).colorScheme.surface,
                child: CloseIcon(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
