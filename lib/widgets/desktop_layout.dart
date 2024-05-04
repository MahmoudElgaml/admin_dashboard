import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_body.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DrawerBody(),
        ),
        Expanded(
            flex: 2,
            child: AllExpensiveBody(),)
      ],
    );
  }
}
