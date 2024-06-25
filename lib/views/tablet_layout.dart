import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/income_section/income_section_body.dart';
import 'package:res_adap/widgets/middle_wiget.dart';
import 'package:res_adap/widgets/mobile_layout.dart';
import 'package:res_adap/widgets/my_card_section.dart';
import 'package:res_adap/widgets/mycard_body/dotindicator_list.dart';

import '../widgets/mycard_body/my_card_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: DrawerBody()),
        Expanded(
          flex: 3,
          child: MobileLayout()
        )
      ],
    );
  }
}
