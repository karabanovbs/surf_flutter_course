
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/data/model/place.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

/// Sight details widget
class SightDetails extends StatelessWidget {
  final int sightId;

  const SightDetails({
    Key? key,
    required this.sightId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: context.read<IPlaceInteractor>().getPlaceDetails(sightId),
        builder: (BuildContext context, AsyncSnapshot<Place> snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return Center(
              child: AppLoader(),
            );
          }

          final sight = snapshot.data!;

          return Container(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  toolbarHeight: 64,
                  leadingWidth: 64,
                  pinned: true,
                  leading: Container(),

                  title: Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.background,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),

                  /// back button
                  actions: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: ElevatedButton(
                          child: Center(
                            child: SizedBox(
                              height: 12,
                              child: IconWrapper(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                child: DeleteIcon(),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).maybePop();
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shape: MaterialStateProperty.all(
                              CircleBorder(),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).backgroundColor),
                          ),
                        ),
                      ),
                    )
                  ],
                  backgroundColor:
                      Theme.of(context).backgroundColor.withOpacity(0),
                  elevation: 0,
                  expandedHeight: 360,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: _buildGallery(context, sight),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _buildDescription(context, sight),
                ),
                SliverToBoxAdapter(
                  child: _buildControls(context, sight),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildGallery(BuildContext context, Place sight) {
    return GalleryViewer(
      photos: sight.urls,
    );
  }

  Widget _buildDescription(BuildContext context, Place sight) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 24),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sight.name,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Row(
            children: [
              Text(
                sight.type.label.toLowerCase(),
                style: Theme.of(context).textTheme.subtitle1!.copyWith(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'закрыто до 09:00',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              sight.details!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControls(BuildContext context, Place sight) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print('start navigation');
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: Container(
              height: 48,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onPrimary,
                            BlendMode.srcIn,
                          ),
                          image: AssetImage('res/images/go.png'),
                        ),
                      ),
                    ),
                    Text(
                      'построить маршрут'.toUpperCase(),
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
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
                  child: TextButton(
                    onPressed: () {
                      print('plan');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 8),
                            child: IconWrapper(
                              color: Theme.of(context).colorScheme.secondary,
                              child: const CalendarIcon(),
                            ),
                          ),
                          Text(
                            'Запланировать',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  child: TextButton(
                    onPressed: () async {
                      if (await context.read<IPlaceInteractor>().isFavoritePlace(sight)) {
                        context.read<IPlaceInteractor>().removeFromFavorites(sight);
                      } else {
                        context.read<IPlaceInteractor>().addToFavorites(sight);
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 8),
                            child: IconWrapper(
                              color: Theme.of(context).colorScheme.secondary,
                              child: const HeartIcon(),
                            ),
                          ),
                          Text(
                            'В избранное',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
