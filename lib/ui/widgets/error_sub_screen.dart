import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/drawing/icons/icons.dart';
import 'package:places/res/text_constants.dart' as text_constants;

class ErrorSubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: IconWrapper(
            color: Theme.of(context).colorScheme.onSurface,
            child: ErrorIcon(),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          text_constants.error,
          style: Theme.of(context).textTheme.headline3?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text_constants.errorDescription,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
