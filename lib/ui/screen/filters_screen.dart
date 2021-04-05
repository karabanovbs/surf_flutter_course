import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/helpers/distance_helper.dart';
import 'package:places/mocks.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/widgets/widgets.dart';

class FiltersResult {
  final Set<ESightType> typeFilters;
  final double distanceStart;
  final double distanceEnd;

  FiltersResult(
    this.typeFilters,
    this.distanceStart,
    this.distanceEnd,
  );

  bool filter(Sight sight) {
    return arePointsBetween(
          GeoPoint(
            longitude: sight.lon,
            latitude: sight.lat,
          ),
          const GeoPoint(
            latitude: 58.006615,
            longitude: 56.307513,
          ),
          distanceStart / 1000,
          distanceEnd / 1000,
        ) &&
        (typeFilters.isEmpty || typeFilters.contains(sight.type));
  }
}

/// Filter setup screen
class FiltersScreen extends StatefulWidget {
  final FiltersResult? filters;

  FiltersScreen(this.filters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  void initState() {
    super.initState();

    if (widget.filters != null) {
      _typeFilters = widget.filters!.typeFilters;
      distanceStart = widget.filters!.distanceStart;
      distanceEnd = widget.filters!.distanceEnd;
    }
  }

  double distanceStart = 100;
  double distanceEnd = 10000;

  Set<ESightType> _typeFilters = {};
  Set<ESightType> _filtersVariant = {
    ESightType.hotel,
    ESightType.restaurant,
    ESightType.special,
    ESightType.park,
    ESightType.museum,
    ESightType.cafe,
  };

  Map<ESightType, Widget> _filtersIconMap = {
    ESightType.hotel: HotelIcon(),
    ESightType.restaurant: RestourantIcon(),
    ESightType.special: ParticularPlaceIcon(),
    ESightType.park: ParkIcon(),
    ESightType.museum: MuseumIcon(),
    ESightType.cafe: CafeIcon(),
  };

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              setState(() {
                _typeFilters = {};
              });
            },
            child: Text(
              clearLbl,
              style: Theme.of(context).textTheme.headline4!.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView(
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
                                    MediaQuery.of(context).devicePixelRatio) <=
                                800
                            ? 3
                            : 6))
                      FilterCategory(
                        button: FilterRoundButton(
                          checked: _typeFilters.contains(_filter),
                          icon: _filtersIconMap[_filter],
                          onPressed: () {
                            print(MediaQuery.of(context).size.height *
                                MediaQuery.of(context).devicePixelRatio);
                            print(MediaQuery.of(context));
                            setState(() {
                              if (_typeFilters.contains(_filter)) {
                                _typeFilters.remove(_filter);
                              } else {
                                _typeFilters.add(_filter);
                              }
                            });
                          },
                        ),
                        label: SightType(_filter).label,
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: SizedBox(
                height: 72,
                child: Column(
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
                            '$distanceFromLbl ${distanceStart.round()} $distanceToLbl ${distanceEnd.round()} $distanceUnitLbl',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
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
                      start: distanceStart,
                      end: distanceEnd,
                      onChange: (start, end) {
                        setState(() {
                          distanceStart = start;
                          distanceEnd = end;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: PrimaryButton(
                child: Center(
                  child: Text('$showLbl (${sights.where(
                        (element) => FiltersResult(
                          _typeFilters,
                          distanceStart,
                          distanceEnd,
                        ).filter(element),
                      ).length})'),
                ),
                onPressed: () {
                  Navigator.of(context).pop(
                    FiltersResult(
                      _typeFilters,
                      distanceStart,
                      distanceEnd,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
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
