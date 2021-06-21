import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart' as text_constants;

class _BaseCard extends StatelessWidget {
  final Sight sight;
  final List<Widget> actions;
  final Widget content;
  final void Function() onPressed;

  final double _imageSpace = 96;

  const _BaseCard({
    Key? key,
    required this.sight,
    this.actions = const [],
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          /// Background
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: _imageSpace,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.surface,
                  child: Hero(
                    tag: sight.url,
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                      loadingBuilder:
                          (context, child, ImageChunkEvent? loadingProgress) {
                        return AnimatedSwitcher(
                          layoutBuilder: (currentChild, previousChildren) {
                            return Stack(
                              children: <Widget>[
                                ...previousChildren,
                                if (currentChild != null)
                                  Positioned.fill(child: currentChild),
                              ],
                              alignment: Alignment.center,
                            );
                          },
                          child: loadingProgress == null
                              ? child
                              : Align(
                                  alignment: Alignment.center,
                                  child: const Image(
                                    image: const AssetImage(
                                      'res/images/placeholder.png',
                                    ),
                                  ),
                                ),
                          duration: Duration(
                            milliseconds: 300,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                )
              ],
            ),
          ),

          /// Content
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {
                onPressed.call();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 96,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// sight type
                          Expanded(
                            child: Text(
                              sight.type.label.toLowerCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),

                          Row(
                            children: actions,
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// bottom half
                  Container(
                    // color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        width: double.infinity,
                        child: content,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Sight card
class SightCard extends StatelessWidget {
  final Sight sight;
  final void Function() onPressed;
  final void Function() onLike;
  final bool liked;

  const SightCard({
    Key? key,
    required this.sight,
    required this.onPressed,
    required this.onLike,
    required this.liked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      sight: sight,
      actions: [
        Container(
          height: 24,
          width: 24,
          child: TextButton(
            onPressed: onLike,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(CircleBorder()),
              padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            ),
            child: AnimatedSwitcher(
              duration: Duration(
                milliseconds: 300,
              ),
              child: !liked ? const HeartIcon() : HeartFullIcon(),
            ),
          ),
        )
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// sight name
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: Text(
                sight.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
          ),

          /// sight description
          Text(
            sight.details!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}

class FavoriteSightCard extends StatelessWidget {
  final Sight sight;
  final void Function() onRemove;
  final void Function() onPressed;
  final void Function() onDate;

  const FavoriteSightCard({
    Key? key,
    required this.sight,
    required this.onRemove,
    required this.onPressed,
    required this.onDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Theme.of(context).colorScheme.error,
                padding: const EdgeInsets.all(16),
                child: LayoutBuilder(builder: (context, constrains) {
                  if (constrains.maxHeight < 50) {
                    return Container();
                  }
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 22,
                          height: 20,
                          child: TrashIcon(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          text_constants.delete,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        Dismissible(
          key: ValueKey(sight),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            onRemove.call();
          },
          child: _BaseCard(
            sight: sight,
            onPressed: onPressed,
            actions: [
              SizedBox(
                height: 24,
                width: 24,
                child: TextButton(
                  onPressed: onDate,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  ),
                  child: const CalendarIcon(),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 24,
                width: 24,
                child: TextButton(
                  onPressed: onRemove,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  ),
                  child: const CloseIcon(),
                ),
              ),
            ],
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sight.name,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 28,
                    child: Text(
                      sight.details!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ),
                Text(
                  sight.details!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteHistorySightCard extends StatelessWidget {
  final Sight sight;
  final void Function() onPressed;

  const FavoriteHistorySightCard({
    Key? key,
    required this.sight,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      sight: sight,
      onPressed: onPressed,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sight.name,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 28,
              child: Text(
                sight.details!,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                    ),
              ),
            ),
          ),
          Text(
            sight.details!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
          ),
        ],
      ),
      actions: [
        SizedBox(
          height: 24,
          width: 24,
          child: TextButton(
            onPressed: () {
              print('tap share');
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(CircleBorder()),
              padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            ),
            child: const ShareIcon(),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: TextButton(
            onPressed: () {
              print('tap close');
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(CircleBorder()),
              padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            ),
            child: const CloseIcon(),
          ),
        ),
      ],
    );
  }
}
