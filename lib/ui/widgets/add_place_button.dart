import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class AddPlaceButton extends StatelessWidget {
  final String label;

  final VoidCallback? onPressed;

  const AddPlaceButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(StadiumBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: Ink(
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            colors: [
              Color(0xFFFCDD3D),
              Color(0xFF4CAF50),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 14,
                height: 14,
                child: PlusIcon(),
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).colorScheme.background,
                    ),
              ),
            ],
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
