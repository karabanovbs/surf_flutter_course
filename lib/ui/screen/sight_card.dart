import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/typography.dart';

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
                            style: sightCardTypeTextStyle,
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
              color: AppColorsWhite.background,
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
                style: sightCardNameTextStyle,
              ),
            ),
          ),

          /// sight description
          Text(
            sight.details,
            style: sightCardDescriptionTextStyle,
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
          Text(sight.name),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 28,
              child: Text(
                sight.details,
                style: sightCardDescriptionTextStyle.copyWith(
                    color: AppColorsWhite.green),
              ),
            ),
          ),
          Text(
            sight.details,
            style: sightCardDescriptionTextStyle,
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
          Text(sight.name),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 28,
              child: Text(
                sight.details,
                style: sightCardDescriptionTextStyle,
              ),
            ),
          ),
          Text(
            sight.details,
            style: sightCardDescriptionTextStyle,
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
