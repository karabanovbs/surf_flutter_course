import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class SearchBarFiltersActonButton extends StatelessWidget {
  final void Function()? onPressed;

  const SearchBarFiltersActonButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14,
      width: 18,
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 15,
        icon: IconWrapper(
          color: Theme.of(context).colorScheme.primary,
          child: FiltersIcon(),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
