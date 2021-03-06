import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/place_filters/place_filters_bloc.dart';
import 'package:places/data/interactor/search_place_interactor.dart';
import 'package:places/data/model/place.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

/// Filter setup screen
class FiltersScreen extends StatelessWidget {
  Set<ESightType> _filtersVariant = {
    ESightType.hotel,
    ESightType.restaurant,
    ESightType.other,
    ESightType.park,
    ESightType.museum,
    ESightType.cafe,
  };

  Map<ESightType, Widget> _filtersIconMap = {
    ESightType.hotel: HotelIcon(),
    ESightType.restaurant: RestourantIcon(),
    ESightType.other: ParticularPlaceIcon(),
    ESightType.park: ParkIcon(),
    ESightType.museum: MuseumIcon(),
    ESightType.cafe: CafeIcon(),
  };

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: SizedBox(
              width: 7,
              height: 12,
              child: IconWrapper(
                child: ArrowLeftIcon(),
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () async {
                BlocProvider.of<PlaceFiltersBloc>(context).add(
                  PlaceFiltersEvent.clear(),
                );
              },
              child: Text(
                clearLbl,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    heightFactor: 1,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      categoryLbl,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  BlocBuilder<PlaceFiltersBloc, PlaceFiltersState>(
                      builder: (context, state) {
                    return GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      children: [
                        for (var _filter in _filtersVariant.take(

                            /// TODO: В идеале наверно лучше использовать
                            /// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
                            /// Реализации:
                            /// https://pub.dev/packages/breakpoint
                            /// https://pub.dev/packages/adaptive_breakpoints
                            /// https://pub.dev/packages/layout

                            (MediaQuery.of(context).size.height *
                                        MediaQuery.of(context)
                                            .devicePixelRatio) <=
                                    800
                                ? 3
                                : 6))
                          FilterCategory(
                            button: FilterRoundButton(
                              checked: state.filter?.types
                                      ?.contains(SightType(_filter)) ??
                                  false,
                              icon: _filtersIconMap[_filter],
                              onPressed: () async {
                                BlocProvider.of<PlaceFiltersBloc>(context)
                                    .add(
                                  PlaceFiltersEvent.invertType(
                                    SightType(_filter),
                                  ),
                                );
                              },
                            ),
                            label: SightType(_filter).label,
                          ),
                      ],
                    );
                  }),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Expanded(
                child: SizedBox(
                  height: 72,
                  child: BlocBuilder<PlaceFiltersBloc, PlaceFiltersState>(
                      builder: (context, state) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                distanceLbl,
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                '$distanceFromLbl ${100} $distanceToLbl ${(state.filter?.distance ?? 10000).round()} $distanceUnitLbl',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryVariant,
                                    ),
                              )
                            ],
                          ),
                        ),
                        AppRangeSlider(
                          min: 100,
                          max: 10000,
                          start: 100,
                          end: state.filter?.distance ?? 10000,
                          onChange: (start, end) async {
                            BlocProvider.of<PlaceFiltersBloc>(context).add(
                              PlaceFiltersEvent.changeDistance(
                                end,
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: PrimaryButton(
                  child: Center(
                    child: BlocBuilder<PlaceFiltersBloc, PlaceFiltersState>(
                        builder: (context, state) {
                      return Text('$showLbl (${state.count ?? 0})');
                    }),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class FilterCategory extends StatelessWidget {
  final Widget? button;
  final String? label;

  const FilterCategory({
    Key? key,
    this.button,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      width: 92,
      child: Column(
        children: [
          button!,
          SizedBox(
            height: 12,
          ),
          Text(
            label!,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class FilterRoundButton extends StatelessWidget {
  final bool checked;
  final void Function()? onPressed;
  final Widget? icon;

  const FilterRoundButton({
    Key? key,
    this.checked = false,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 64,
      child: CheckMark(
        checked: checked,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.primary.withOpacity(
                    0.16,
                  ),
            ),
            shape: MaterialStateProperty.all(
              CircleBorder(),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(16),
            ),
          ),
          child: IconWrapper(
            child: icon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class CheckMark extends StatelessWidget {
  final bool checked;
  final Widget? child;

  const CheckMark({
    Key? key,
    this.checked = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child!),
        if (checked)
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Center(
                    child: IconWrapper(
                      color: Theme.of(context).colorScheme.surface,
                      child: CheckIcon(),
                    ),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
