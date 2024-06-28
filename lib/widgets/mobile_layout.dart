import 'package:flutter/material.dart';
import 'package:res_adap/widgets/middle_wiget.dart';

import 'income_section/income_section_body.dart';
import 'my_card_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MiddleWidget(),
          Padding(
            padding: EdgeInsets.all(16),
            child: MyCardSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: IncomeSectionBody(),
          ),
        ],
      ),
    );
  }
}
