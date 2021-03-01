import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/helpers/distance_helper.dart';
import 'package:places/mocks.dart';
import 'package:places/text_constans.dart';
import 'package:places/ui/widgets/widgets.dart';

// TODO user later
enum FilterType {
  hotel,
  rest,
  particularPlace,
  park,
  museum,
  cafe,
}

/// Filter setup screen
class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  double distanceStart = 100;
  double distanceEnd = 10000;

  bool hotelCheck = false;
  bool restCheck = false;
  bool particularPlaceCheck = false;
  bool parkCheck = false;
  bool museumCheck = false;
  bool cafeCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
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
                hotelCheck = false;
                restCheck = false;
                particularPlaceCheck = false;
                parkCheck = false;
                museumCheck = false;
                cafeCheck = false;
              });
            },
            child: Text(
              clearLbl,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
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
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Wrap(
                  runSpacing: 12,
                  spacing: 12,
                  children: [
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: hotelCheck,
                        icon: HotelIcon(),
                        onPressed: () {
                          setState(() {
                            hotelCheck = !hotelCheck;
                          });
                        },
                      ),
                      label: categoryHotelLbl,
                    ),
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: restCheck,
                        icon: RestourantIcon(),
                        onPressed: () {
                          setState(() {
                            restCheck = !restCheck;
                          });
                        },
                      ),
                      label: categoryRestourantLbl,
                    ),
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: particularPlaceCheck,
                        icon: ParticularPlaceIcon(),
                        onPressed: () {
                          setState(() {
                            particularPlaceCheck = !particularPlaceCheck;
                          });
                        },
                      ),
                      label: categoryParticularPlaceLbl,
                    ),
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: parkCheck,
                        icon: ParkIcon(),
                        onPressed: () {
                          setState(() {
                            parkCheck = !parkCheck;
                          });
                        },
                      ),
                      label: categoryParkLbl,
                    ),
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: museumCheck,
                        icon: MuseumIcon(),
                        onPressed: () {
                          setState(() {
                            museumCheck = !museumCheck;
                          });
                        },
                      ),
                      label: categoryMuseumLbl,
                    ),
                    FilterCategory(
                      button: FilterRoundButton(
                        checked: cafeCheck,
                        icon: CafeIcon(),
                        onPressed: () {
                          setState(() {
                            cafeCheck = !cafeCheck;
                          });
                        },
                      ),
                      label: categoryCafeLbl,
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
                                Theme.of(context).textTheme.headline5.copyWith(
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
                  child: Text('$showLbl (${mocks.where(
                        (element) => arePointsBetween(
                          GeoPoint(
                            longitude: element.lon,
                            latitude: element.lat,
                          ),
                          const GeoPoint(
                            latitude: 58.006615,
                            longitude: 56.307513,
                          ),
                          distanceStart / 1000,
                          distanceEnd / 1000,
                        ),
                      ).length})'),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterCategory extends StatelessWidget {
  final Widget button;
  final String label;

  const FilterCategory({
    Key key,
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
          button,
          SizedBox(
            height: 12,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class FilterRoundButton extends StatelessWidget {
  final bool checked;
  final void Function() onPressed;
  final Widget icon;

  const FilterRoundButton({
    Key key,
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
  final Widget child;

  const CheckMark({
    Key key,
    this.checked = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child),
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
