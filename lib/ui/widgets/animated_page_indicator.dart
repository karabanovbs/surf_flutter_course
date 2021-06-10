import 'package:flutter/material.dart';

class AnimatedPageIndicator extends StatefulWidget {
  final int count;
  final PageController controller;
  final Widget child;

  const AnimatedPageIndicator({
    Key? key,
    required this.count,
    required this.controller,
    required this.child,
  }) : super(key: key);

  @override
  _AnimatedPageIndicatorState createState() => _AnimatedPageIndicatorState();
}

class _AnimatedPageIndicatorState extends State<AnimatedPageIndicator>
    with TickerProviderStateMixin {
  late AnimationController _controllerLeft;
  late AnimationController _controllerRight;
  late Animation<double> _leftOffset;
  late Animation<double> _rightOffset;
  int _currentPage = 0;

  @override
  void initState() {
    _controllerLeft = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );

    _controllerRight = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );

    _leftOffset = Tween<double>(
      begin: 0,
      end: widget.count.toDouble() - 1,
    ).animate(
      CurvedAnimation(
        parent: _controllerLeft,
        curve: Curves.easeInOut,
      ),
    );

    _rightOffset = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controllerRight,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controllerLeft.dispose();
    _controllerRight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: NotificationListener(
            onNotification: (notification) {
              if (notification is ScrollUpdateNotification) {
                setState(() {
                  if (widget.controller.page != null) {
                    _currentPage = widget.controller.page!.round();
                  }
                });

                var page = widget.controller.page;
                if (page != null) {
                  if (page % 2 > 0.5) {
                    _controllerLeft.animateTo(
                      page / (widget.count - 1),
                    );

                    _controllerRight.animateTo(
                      page.round()  / (widget.count - 1),
                    );
                  } else {
                    _controllerRight.animateTo(
                      page / (widget.count - 1),
                    );
                    _controllerLeft.animateTo(
                      (page.round()) / (widget.count - 1),
                    );
                  }
                }
              }
              return false;
            },
            child: widget.child,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: LayoutBuilder(builder: (context, constrains) {
            return AnimatedBuilder(
                animation: Listenable.merge([
                  _controllerLeft,
                  _controllerRight,
                ]),
                builder: (context, _) {
                  return Stack(
                    fit: StackFit.loose,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < widget.count; i++)
                            _InactiveIndicator(
                              active: _currentPage == i,
                            )
                        ],
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 14 * _leftOffset.value,
                        right: 14 * (widget.count - 1) * _rightOffset.value,
                        child: _ActiveIndicator(),
                      ),
                    ],
                  );
                });
          }),
        ),
      ],
    );
  }
}

class _InactiveIndicator extends StatelessWidget {
  final bool active;

  const _InactiveIndicator({
    Key? key,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: active ? 8 : 4,
      ),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _ActiveIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 8,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
