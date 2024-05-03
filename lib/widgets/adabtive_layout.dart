import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
        required this.desktop,
        required this.mobile,
        required this.tablet});

  final WidgetBuilder mobile, desktop, tablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile(context);
        } else if (constraints.maxWidth > 900) {
          return desktop(context);
        } else {
          return tablet(context);
        }
      },
    );
  }
}