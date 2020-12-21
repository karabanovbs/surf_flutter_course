import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/typography.dart';

/// Sight card
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, @required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: ClipRRect(
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
                          Text(
                            sight.type,
                            style: sightCardTypeTextStyle,
                          ),

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
                      ),
                    )
                  ],
                ),
              ),

              /// bottom half
              Expanded(
                child: Container(
                  height: double.infinity,
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
                          FractionallySizedBox(
                            widthFactor: 0.5,
                            child: Container(
                              color: Color(0xffC4C4C4),
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
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
