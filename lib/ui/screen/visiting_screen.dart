import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/mocks.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/typography.dart';
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
          backgroundColor: AppColorsWhite.white,
          elevation: 0,
          title: Text(
            'Избранное',
            style: TextStyle(
              fontSize: 18,
              color: AppColorsWhite.main,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _VisitingTabBar(
                tabs: [
                  'Хочу посетить',
                  'Посетил',
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _FavoriteTab(
                // sights: mocks,
                ),
            _FavoriteCompleteTab(
                // sights: mocks,
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
  final TabController controller;
  final List<String> tabs;

  const _VisitingTabBar({
    Key key,
    this.controller,
    this.tabs,
  }) : super(key: key);

  @override
  __VisitingTabBarState createState() => __VisitingTabBarState();
}

class __VisitingTabBarState extends State<_VisitingTabBar> {
  TabController _controller;
  int _tabIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= widget.controller ?? DefaultTabController.of(context);
    _tabIndex = _controller.index;
    _controller.addListener(_tabControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: AppColorsWhite.background,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          for (var tab in widget.tabs)
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: widget.tabs.indexOf(tab) == _tabIndex
                      ? AppColorsWhite.secondary
                      : null,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    tab,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: widget.tabs.indexOf(tab) == _tabIndex
                            ? AppColorsWhite.white
                            : AppColorsWhite.inactiveBlack),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _tabControllerListener() {
    if (_controller.index != _tabIndex) {
      setState(() {
        _tabIndex = _controller.index;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_tabControllerListener);
    super.dispose();
  }
}

class _FavoriteTab extends StatelessWidget {
  final List<Sight> sights;

  const _FavoriteTab({
    Key key,
    this.sights = const [],
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
                  child: FavoriteSightCard(
                    sight: sight,
                  ),
                )
            ],
          ),
        ),
      );
    }
    return _EmptyListPlaceholder(
      icon: CardIcon(),
      message: 'Отмечайте понравившиеся места и они появиятся здесь.',
    );
  }
}

class _FavoriteCompleteTab extends StatelessWidget {
  final List<Sight> sights;

  const _FavoriteCompleteTab({
    Key key,
    this.sights = const [],
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
                  child: FavoriteHistorySightCard(
                    sight: sight,
                  ),
                )
            ],
          ),
        ),
      );
    }

    return _EmptyListPlaceholder(
      icon: GoIcon(),
      message: 'Завершите маршрут, чтобы место попало сюда.',
    );
  }
}

class _EmptyListPlaceholder extends StatelessWidget {
  final String message;
  final Widget icon;

  const _EmptyListPlaceholder({
    Key key,
    @required this.message,
    @required this.icon,
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
                  AppColorsWhite.inactiveBlack, BlendMode.srcIn),
              child: icon,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Пусто',
            style: visitingScreenEmptyLabel,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            message,
            style: visitingScreenEmptyDescriptionLabel,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AppBottomNavBar extends StatelessWidget {
  final int index;

  const AppBottomNavBar({Key key, this.index}) : super(key: key);

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
      currentIndex: index,
      selectedItemColor: AppColorsWhite.main,
      unselectedItemColor: AppColorsWhite.main,
    );
  }
}
