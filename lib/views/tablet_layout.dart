import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/middle_wiget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        children: [
          Expanded(child: DrawerBody()),
          Expanded(flex:3,child: MiddleWidget())

        ],
    );
  }
}
