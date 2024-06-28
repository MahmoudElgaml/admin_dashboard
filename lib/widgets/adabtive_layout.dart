import 'package:flutter/material.dart';
import 'package:res_adap/utils/size_config.dart';

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
        if (constrains.maxWidth < SizeConfig.tablet) {
          return mobile(context);
        } else if (constrains.maxWidth < SizeConfig.desktop) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}