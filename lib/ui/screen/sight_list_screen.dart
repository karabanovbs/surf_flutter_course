import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/data/model/place.dart';
import 'package:places/data/stores/sight_favorite_store.dart';
import 'package:places/data/stores/sight_list_store.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/add_sight_screen.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_search_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

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
  late SightListStore _sightListStore;

  @override
  void initState() {
    _sightListStore = SightListStore(context.read<IPlaceInteractor>());
    _sightListStore.loadPlaces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Create AppBar
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
                            return SightSearchScreen();
                          },
                        ),
                      );
                    },
                    action: SearchBarFiltersActonButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FiltersScreen();
                            },
                          ),
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
                  sliver: Observer(
                    builder: (BuildContext context) {
                      if (_sightListStore.places?.status ==
                          FutureStatus.pending) {
                        return SliverFillRemaining(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      if (_sightListStore.places?.status ==
                          FutureStatus.fulfilled) {
                        final places = _sightListStore.places?.value;

                        if (places != null) {
                          return SliverGrid(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 36,
                              mainAxisSpacing: cardPaddingBottom,
                              childAspectRatio: 328 / 188,
                              crossAxisCount:
                                  MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                      ? 2
                                      : 1,
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                Place place = places[index];
                                return _PlaceCard(
                                  place: place,
                                );
                              },
                              childCount: places.length,
                            ),
                          );
                        }
                      }

                      return SliverFillRemaining(
                        child: ErrorSubScreen(),
                      );
                    },
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
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFCDD3D),
                          Color(0xFF4CAF50),
                        ],
                      ),
                    ),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddSightScreen(),
                      ),
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

class _PlaceCard extends StatefulWidget {
  final Place place;

  const _PlaceCard({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  __PlaceCardState createState() => __PlaceCardState();
}

class __PlaceCardState extends State<_PlaceCard> {
  late SightFavoriteStore _sightFavoriteStore;

  @override
  void initState() {
    _sightFavoriteStore =
        SightFavoriteStore(context.read<IPlaceInteractor>(), widget.place);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return SightCard(
          liked: _sightFavoriteStore.isFavorite,
          onPressed: () {
            final id = widget.place.id;

            if (id != null) {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.9,
                    builder: (context, _) {
                      return ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(12),
                          bottomRight: const Radius.circular(12),
                        ),
                        child: SightDetails(
                          sightId: id,
                        ),
                      );
                    },
                  );
                },
                isScrollControlled: true,
                backgroundColor: Color(0x00000000),
              );
            }
          },
          sight: widget.place,
          onLike: () async {
            if (_sightFavoriteStore.isFavorite) {
              await _sightFavoriteStore.removeFromFavorites(widget.place);
            } else {
              await _sightFavoriteStore.addToFavorites(widget.place);
            }
          },
        );
      },
    );
  }
}
