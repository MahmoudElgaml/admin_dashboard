import 'package:flutter/material.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          DrawerBody(),

        ],
    );
  }
}
