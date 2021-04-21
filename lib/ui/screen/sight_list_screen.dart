import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/data/model/place.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/add_sight_screen.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_search_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:rxdart/rxdart.dart';


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

// Когда нибудь это будет состояние
abstract class _LoadingState {}

class _LoadingStateInProgress extends _LoadingState {}

class _LoadingStateSuccess<T> extends _LoadingState {
  final T data;

  _LoadingStateSuccess(this.data);
}

class _LoadingStateError extends _LoadingState {}

/// App home screen with list of sight
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final Stream<_LoadingState> _loadPlacesStream = (() async* {
    try {
      yield _LoadingStateInProgress();
      yield _LoadingStateSuccess(await placeInteractor.getPlaces(null, []));
    } catch (_) {
      _LoadingStateError();
    }
  })();

  final StreamController<void> _likeChanged =
      StreamController<void>.broadcast();

  @override
  void dispose() {
    _likeChanged.close();
    super.dispose();
  }

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
                  sliver: StreamBuilder<_LoadingState>(
                    stream: _loadPlacesStream,
                    initialData: _LoadingStateInProgress(),
                    builder: (BuildContext context,
                        AsyncSnapshot<_LoadingState> snapshot) {
                      var data = snapshot.data;
                      if (data is _LoadingStateInProgress) {
                        return SliverToBoxAdapter(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      if (data is _LoadingStateSuccess<List<Place>>) {
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
                              Place sight = data.data[index];
                              return StreamBuilder<bool>(
                                stream: _likeChanged.stream
                                    .startWith(null)
                                    .flatMap<bool>(
                                  (event) async* {
                                    yield await placeInteractor
                                        .isFavoritePlace(sight);
                                  },
                                ).distinct(),
                                initialData: false,
                                builder: (context, snapshot) {
                                  return SightCard(
                                    liked: snapshot.data ?? false,
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return DraggableScrollableSheet(
                                            initialChildSize: 0.9,
                                            builder: (context, _) {
                                              return ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft:
                                                      const Radius.circular(12),
                                                  bottomRight:
                                                      const Radius.circular(12),
                                                ),
                                                child: SightDetails(
                                                  sightId: sight.id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        isScrollControlled: true,
                                        backgroundColor: Color(0x00000000),
                                      );
                                    },
                                    sight: sight,
                                    onLike: () async {
                                      if (await placeInteractor
                                          .isFavoritePlace(sight)) {
                                        await placeInteractor
                                            .removeFromFavorites(sight);
                                        _likeChanged.add(null);
                                      } else {
                                        await placeInteractor
                                            .addToFavorites(sight);
                                        _likeChanged.add(null);
                                      }
                                    },
                                  );
                                },
                              );
                            },
                            childCount: data.data.length,
                          ),
                        );
                      }

                      return SliverToBoxAdapter(
                        child: Center(
                          child: Icon(Icons.error),
                        ),
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
