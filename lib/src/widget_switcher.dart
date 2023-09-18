import 'package:flutter/material.dart';

class WidgetSwitcher extends StatefulWidget {
  const WidgetSwitcher({
    required this.firstWidget,
    required this.secondWidget,
    required this.switchToSecondWidget,
    this.animationDuration,
    super.key,
  });

  final Widget firstWidget;
  final Widget secondWidget;
  final bool switchToSecondWidget;
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
