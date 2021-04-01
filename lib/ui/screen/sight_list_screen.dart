import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/mocks.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/add_sight_screen.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_search_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/widgets.dart';

/// Constants
///   AppBar
const double appBarPaddingTop = 40;
const double appBarPaddingBottom = 16;
const double appBarPaddingLeft = 16;
const double appBarPaddingRight = 16;
const double appBarTitleHeight = 72;
const double totalAppBarHeight =
    appBarPaddingTop + appBarTitleHeight + appBarPaddingBottom;

///   Body
const double bodyPaddingLeft = appBarPaddingLeft;
const double bodyPaddingRight = appBarPaddingRight;
const double cardPaddingBottom = appBarPaddingBottom;

/// App home screen with list of sight
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  FiltersResult? filters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Create AppBar
      // appBar: _AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: SliverSearchAppbar(SearchBar(
                    readonly: true,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SightSearchScreen(filters);
                          },
                        ),
                      );
                    },
                    action: SearchBarFiltersActonButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FiltersScreen(filters);
                            },
                          ),
                        ).then(
                          (value) {
                            if (value is FiltersResult) {
                              setState(() {
                                filters = value;
                              });
                            }
                          },
                        );
                      },
                    ),
                  )),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    right: bodyPaddingRight,
                    left: bodyPaddingLeft,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: cardPaddingBottom,
                          ),
                          child: SightCard(
                            onPressed: (sight) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SightDetails(
                                    sight: sight,
                                  ),
                                ),
                              );
                            },
                            sight: sights[index],
                          ),
                        );
                      },
                      childCount: sights.length,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 16,
              right: 0,
              left: 0,
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(StadiumBorder()),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  child: Ink(
                    decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(colors: [
                          Color(0xFFFCDD3D),
                          Color(0xFF4CAF50),
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: PlusIcon(),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            sightListAddNewLbl.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                        builder: (context) => AddSightScreen(),
                      ),
                    )
                        .then(
                      (value) {
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(
        index: 0,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Set color by backgroundColor
      backgroundColor: Theme.of(context).backgroundColor,

      /// Remove shadow
      elevation: 0,

      /// Set AppBar height
      toolbarHeight: totalAppBarHeight,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(appBarPaddingLeft, appBarPaddingTop,
            appBarPaddingRight, appBarPaddingBottom),
        child: SizedBox(
          height: appBarTitleHeight,
          width: double.infinity,
          child: RichText(
            maxLines: 2,
            text: TextSpan(
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 32,
                height: 36 / 32,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: 'С',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                TextSpan(text: 'писок\n'),
                TextSpan(
                    text: 'и',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryVariant)),
                TextSpan(text: 'нтересных мест'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, totalAppBarHeight);
}

class SliverSearchAppbar extends SliverPersistentHeaderDelegate {
  final Widget content;

  SliverSearchAppbar(this.content);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(shrinkOffset);
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(
          right: bodyPaddingRight,
          left: bodyPaddingLeft,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: max(maxExtent - shrinkOffset - minExtent, minExtent),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: minExtent,
                ),
                child: Center(
                  child: Text(
                    sightListScreenTitle,
                    style: TextStyleTween(
                      begin: Theme.of(context).textTheme.headline1,
                      end: Theme.of(context).textTheme.headline3,
                    ).transform(shrinkOffset / maxExtent),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(
                // fit: StackFit.expand,
                clipBehavior: Clip.antiAlias,
                children: [
                  Positioned(
                    height: 68,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: content,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 188;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
