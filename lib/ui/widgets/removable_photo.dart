import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class RemovablePhoto extends StatelessWidget {
  final ImageProvider photo;
  final void Function() onRemove;

  const RemovablePhoto({
    Key? key,
    required this.photo,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(photo),
      direction: DismissDirection.up,
      onDismissed: (direction) {
        onRemove.call();
      },
      child: SizedBox(
        height: 72,
        width: 72,
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            image: DecorationImage(image: photo, fit: BoxFit.cover),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: IconButton(
                  splashRadius: 15,
                  constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
                  padding: EdgeInsets.zero,
                  icon: RemoveIcon(),
                  onPressed: onRemove,
                ),
              ),
            ),
          ),
        ),
      ),
      background: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: SizedBox(
            width: 12,
            height: 8,
            child: IconWrapper(
              color: Theme.of(context).colorScheme.onBackground,
              child: RotatedBox(
                quarterTurns: 1,
                child: ArrowLeftIcon(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
