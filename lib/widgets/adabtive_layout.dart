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
      builder: (context, constrains) {
        if (constrains.maxWidth < 800) {
          return mobile(context);
        } else if (constrains.maxWidth < 1200) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}