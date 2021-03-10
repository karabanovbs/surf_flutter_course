import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart' as text_constants;

class SearchBar extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onEditingComplete;
  final bool autoFocus;
  final Widget? action;
  final bool readonly;
  final TextEditingController? controller;

  const SearchBar({
    Key? key,
    this.onPressed,
    this.action,
    this.readonly = false,
    this.controller,
    this.onEditingComplete,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 18,
                width: 19.06,
                child: IconWrapper(
                  color: Theme.of(context).colorScheme.onSurface,
                  child: SearchIcon(),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  onTap: onPressed,
                  readOnly: readonly,
                  autofocus: autoFocus,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                  decoration: InputDecoration.collapsed(
                    hintText: text_constants.search,
                    hintStyle: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  onEditingComplete: onEditingComplete,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              if (action != null) action!,
            ],
          ),
        ),
      ),
    );
  }
}
