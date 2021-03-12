import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/drawing/helpers/icon_wrapper.dart';
import 'package:places/drawing/icons/plus.dart';

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
    return SizedBox(
      height: 72,
      width: 72,
      child: Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          image: DecorationImage(image: photo, fit: BoxFit.cover),
        ),
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
    );
  }
}
