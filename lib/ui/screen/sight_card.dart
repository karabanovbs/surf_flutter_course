import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/typography.dart';

/// Sight card
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, this.sight}) : super(key: key);

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
              /// TODO: replace with image
              color: Color(0x55123123),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// sight type
                    Text(
                      sight.type,
                      style: sightCardTypeTextStyle,
                    ),
                    /// TODO: replace with heart icon
                    Container(
                      height: 20,
                      width: 18,
                      color: Color(0x55FFFFFF),
                    )
                  ],
                ),
              ),
            ),
            /// bottom half
            Container(
              height: 92,
              color: AppColorsWhite.background,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// sight name
                      Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        child: Text(
                          sight.name,
                          maxLines: 2,
                          style: sightCardNameTextStyle,
                        ),
                      ),
                      /// sight description
                      Text(
                        sight.details,
                        style: sightCardDescriptionTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
