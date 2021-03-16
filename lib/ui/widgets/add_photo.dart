import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';

class AddPhoto extends StatefulWidget {
  final void Function() onPressed;

  const AddPhoto({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  InkFeature? inkFeature;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.48),
          width: 2,
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Builder(builder: (
          context,
        ) {
          return GestureDetector(
            onTapDown: (details) {
              if (inkFeature == null) {
                inkFeature = InkRipple(
                  controller: Material.of(context)!,
                  textDirection: TextDirection.rtl,
                  referenceBox: context.findRenderObject()! as RenderBox,
                  color: Theme.of(context).splashColor,
                  position: (context.findRenderObject()! as RenderBox)
                      .globalToLocal(details.globalPosition),
                );
              }
            },
            onTapUp: (details) {
              inkFeature?.dispose();
              inkFeature = null;
            },
            onTap: widget.onPressed,
            child: Center(
              child: SizedBox(
                height: 27,
                width: 27,
                child: IconWrapper(
                  color: Theme.of(context).colorScheme.primary,
                  child: PlusIcon(),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
