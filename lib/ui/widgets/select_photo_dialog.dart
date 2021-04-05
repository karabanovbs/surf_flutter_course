import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart' as text_constants;

enum SelectPhotoType {
  camera,
  photo,
  file,
}

class SelectPhotoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _SelectItem(
                  onPressed: () =>
                      Navigator.of(context).pop(SelectPhotoType.camera),
                  icon: const SizedBox(
                    width: 22,
                    height: 20,
                    child: const CameraIcon(),
                  ),
                  label: text_constants.selectPhotoDialogCamera,
                ),
                Container(
                  height: 0.8,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.56),
                ),
                _SelectItem(
                  onPressed: () =>
                      Navigator.of(context).pop(SelectPhotoType.photo),
                  icon: const SizedBox(
                    width: 22,
                    height: 17,
                    child: const PhotoIcon(),
                  ),
                  label: text_constants.selectPhotoDialogPhoto,
                ),
                Container(
                  height: 0.8,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.56),
                ),
                _SelectItem(
                  onPressed: () =>
                      Navigator.of(context).pop(SelectPhotoType.file),
                  icon: const SizedBox(
                    width: 18,
                    height: 20,
                    child: const FileIcon(),
                  ),
                  label: text_constants.selectPhotoDialogFile,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              text_constants.cancel.toUpperCase(),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.background,
              ),
              minimumSize: MaterialStateProperty.all(
                Size(
                  double.infinity,
                  48,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectItem extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final String label;

  const _SelectItem({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Center(
              child: IconWrapper(
                color: Theme.of(context).colorScheme.secondaryVariant,
                child: icon,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Theme.of(context).colorScheme.secondaryVariant),
          ),
        ],
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(
            double.infinity,
            48,
          ),
        ),
      ),
    );
  }
}
