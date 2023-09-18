import 'package:flutter/material.dart';

class WidgetSwitcher extends StatefulWidget {
  const WidgetSwitcher({
    required this.firstWidget,
    required this.secondWidget,
    required this.switchToSecondWidget,
    this.animationDuration,
    super.key,
  });

  /// The first widget to be displayed.
  final Widget firstWidget;

  /// The second widget to be displayed.
  final Widget secondWidget;

  /// Whether to switch to the second widget.
  final bool switchToSecondWidget;

  /// The duration of the animation.
  final int? animationDuration;

  @override
  State<WidgetSwitcher> createState() => _WidgetSwitcherState();
}

class _WidgetSwitcherState extends State<WidgetSwitcher> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: widget.animationDuration ?? 800),
      child: widget.switchToSecondWidget
          ? widget.secondWidget
          : widget.firstWidget,
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
    );
  }
}
