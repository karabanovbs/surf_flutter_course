import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/typography.dart';

class _BaseCard extends StatelessWidget {
  final Sight sight;
  final List<Widget> actions;
  final Widget content;

  const _BaseCard({
    Key key,
    @required this.sight,
    this.actions = const [],
    @required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// top half
            Container(
              height: 96,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                      loadingBuilder:
                          (context, child, ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Align(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// sight type
                        Expanded(
                          child: Text(
                            sight.type,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                          ),
                        ),

                        Row(
                          children: actions,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// bottom half
            Container(
              color: Theme.of(context).colorScheme.surface,
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
    );
  }
}

/// Sight card
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, @required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      sight: sight,
      actions: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('res/images/heart.png'),
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
                maxLines: 3,
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
          ),

          /// sight description
          Text(
            sight.details,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class FavoriteSightCard extends StatelessWidget {
  final Sight sight;

  const FavoriteSightCard({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      sight: sight,
      actions: [
        SizedBox(
          height: 24,
          width: 24,
          child: CalendarIcon(),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: CloseIcon(),
        ),
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sight.name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 28,
              child: Text(
                sight.details,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
          Text(
            sight.details,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class FavoriteHistorySightCard extends StatelessWidget {
  final Sight sight;

  const FavoriteHistorySightCard({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      sight: sight,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sight.name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 28,
              child: Text(
                sight.details,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                    ),
              ),
            ),
          ),
          Text(
            sight.details,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
          ),
        ],
      ),
      actions: [
        SizedBox(
          height: 24,
          width: 24,
          child: ShareIcon(),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: CloseIcon(),
        ),
      ],
    );
  }
}
