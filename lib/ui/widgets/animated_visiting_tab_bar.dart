import 'package:flutter/material.dart';

class AnimatedVisitingTabBar extends StatefulWidget {
  final TabController? controller;
  final List<String> tabs;

  const AnimatedVisitingTabBar({
    Key? key,
    this.controller,
    required this.tabs,
  }) : super(key: key);

  @override
  _AnimatedVisitingTabBarState createState() => _AnimatedVisitingTabBarState();
}

class _AnimatedVisitingTabBarState extends State<AnimatedVisitingTabBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _leftOffset;
  late Animation<double> _rightOffset;
  TabController? _tabController;
  int? _tabIndex;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      value: (_tabIndex ?? 0) / widget.tabs.length,
      duration: Duration(
        milliseconds: 300,
      ),
    );
    _leftOffset = Tween<double>(
      begin: 0,
      end: widget.tabs.length.toDouble() - 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _rightOffset = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabController ??= widget.controller ?? DefaultTabController.of(context);
    _tabIndex = _tabController?.index;
    _tabController?.addListener(_tabControllerListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController?.removeListener(_tabControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: LayoutBuilder(builder: (context, conditions) {
        return AnimatedBuilder(
            animation: _controller,
            builder: (context, snapshot) {
              return Stack(
                fit: StackFit.loose,
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: conditions.maxWidth /
                        widget.tabs.length *
                        _leftOffset.value,
                    right: conditions.maxWidth /
                        widget.tabs.length *
                        _rightOffset.value,
                    child: Container(
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ),
                  Row(
                    children: [
                      for (var tab in widget.tabs)
                        Expanded(
                          child: Container(
                            height: 40,
                            child: TextButton(
                              onPressed: () {
                                _tabController?.index =
                                    widget.tabs.indexOf(tab);
                              },
                              style: ButtonStyle(
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
                                    color: widget.tabs.indexOf(tab) == _tabIndex
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onPrimary
                                        : Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              );
            });
      }),
    );
  }

  void _tabControllerListener() {
    if (_tabController!.index != _tabIndex) {
      _tabIndex = _tabController?.index;
      _controller.animateTo(
        (_tabIndex ?? 0) / (widget.tabs.length - 1),
      );
      setState(() {});
    }
  }
}
