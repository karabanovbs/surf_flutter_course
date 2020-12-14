import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/typography.dart';

/// Sight details widget
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// body under appbar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 64,
        leadingWidth: 64,

        /// back button
        leading: Container(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 32,
              height: 32,
              color: AppColorsWhite.white,
            ),
          ),
        ),
        backgroundColor: Color(0x00000000),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            /// gallery
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Color(0x55123123),
                  alignment: Alignment(-1.1, 1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: AppColorsWhite.main,
                      height: 8,
                      width: 150,
                    ),
                  ),
                ),
              ),
            ),

            /// description
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 24),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: sightDetailsNameTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: sightDetailsTypeTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('закрыто до 09:00',
                            style: sightDetailsTimeTextStyle),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Text(sight.details,
                        style: sightDetailsDescriptionTextStyle),
                  ),
                ],
              ),
            ),

            /// controls
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      color: AppColorsWhite.green,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /// TODO: replace with icon
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 20,
                              width: 18,
                              color: Color(0xffffffffff),
                            ),
                            Text(
                              'построить маршрут'.toUpperCase(),
                              style: sightDetailsButtonTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 8),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            height: 40,
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  /// TODO: replace with icon
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 20,
                                    width: 18,
                                    color: Color(0x550000000),
                                  ),
                                  Text('Запланировать',
                                      style: sightDetailsTextButtonTextStyle),
                                ],
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                /// TODO: replace with icon
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 20,
                                  width: 18,
                                  color: Color(0x550000000),
                                ),
                                Text(
                                  'В избранное',
                                  style: sightDetailsTextButtonTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
