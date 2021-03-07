import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/mocks.dart';
import 'package:places/res/typography.dart';
import 'package:places/text_constans.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

class VisitingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          title: Text(
            visitingScreenTitle,
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _VisitingTabBar(
                tabs: [
                  visitingScreenFavTabLabel,
                  visitingScreenFavHistoryTabLabel,
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _TabCardsList(
              sights: mocks,
              cardBuilder: (sight) {
                return FavoriteSightCard(
                  sight: sight,
                );
              },
            ),
            _TabCardsList(
              // sights: mocks,
              cardBuilder: (sight) {
                return FavoriteHistorySightCard(
                  sight: sight,
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: AppBottomNavBar(
          index: 2,
        ),
      ),
    );
  }
}

class _VisitingTabBar extends StatefulWidget {
  final TabController? controller;
  final List<String>? tabs;

  const _VisitingTabBar({
    Key? key,
    this.controller,
    this.tabs,
  }) : super(key: key);

  @override
  __VisitingTabBarState createState() => __VisitingTabBarState();
}

class __VisitingTabBarState extends State<_VisitingTabBar> {
  TabController? _controller;
  int? _tabIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= widget.controller ?? DefaultTabController.of(context);
    _tabIndex = _controller!.index;
    _controller!.addListener(_tabControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          for (var tab in widget.tabs!)
            Expanded(
              child: Container(
                height: 40,
                child: TextButton(
                  onPressed: () {
                    print('select tab ${widget.tabs!.indexOf(tab)}');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => widget.tabs!.indexOf(tab) == _tabIndex
                          ? Theme.of(context).colorScheme.onSecondary
                          : null,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      tab,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: widget.tabs!.indexOf(tab) == _tabIndex
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _tabControllerListener() {
    if (_controller!.index != _tabIndex) {
      setState(() {
        _tabIndex = _controller!.index;
      });
    }
  }

  @override
  void dispose() {
    _controller!.removeListener(_tabControllerListener);
    super.dispose();
  }
}

class _TabCardsList extends StatelessWidget {
  final List<Sight> sights;
  final Widget Function(Sight sight) cardBuilder;

  const _TabCardsList({
    Key? key,
    this.sights = const [],
    required this.cardBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sights.length > 0) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              for (var sight in sights)
                Padding(
                  padding: const EdgeInsets.only(
                      right: bodyPaddingRight,
                      left: bodyPaddingLeft,
                      bottom: cardPaddingBottom),
                  child: cardBuilder(sight),
                )
            ],
          ),
        ),
      );
    }
    return _EmptyListPlaceholder(
      icon: CardIcon(),
      message: visitingScreenFavNotFoundLabel,
    );
  }
}

class _EmptyListPlaceholder extends StatelessWidget {
  final String message;
  final Widget icon;

  const _EmptyListPlaceholder({
    Key? key,
    required this.message,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 53),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
              child: icon,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            empty,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AppBottomNavBar extends StatelessWidget {
  final int? index;

  const AppBottomNavBar({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: ListIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: ListFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: MapIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: MapFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: HeartIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: HeartFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: SettingsIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: SettingsFullIcon(),
            ),
          ),
        ),
      ],
      currentIndex: index!,
      selectedItemColor: Theme.of(context).colorScheme.onBackground,
      unselectedItemColor: Theme.of(context).colorScheme.onBackground,
    );
  }
}
