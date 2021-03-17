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
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  _onPageChange() {
    // setState(() {
    //   _currentPage = widget.controller.page;
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: NotificationListener(
            onNotification: (notification) {
              if (notification is ScrollEndNotification) {
                setState(() {
                  if (widget.controller.page != null) {
                    _currentPage = widget.controller.page!.round();
                  }
                });
              }
              return false;
            },
            child: widget.child,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < widget.count; i++)
                _currentPage == i ? _ActiveIndicator() : _InactiveIndicator(),
            ],
          ),
        ),
      ],
    );
  }
}

class _InactiveIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
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
        width: 24,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
