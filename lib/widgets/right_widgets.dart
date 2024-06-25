import 'package:flutter/material.dart';
import 'package:res_adap/widgets/income_section/income_section_body.dart';

import 'my_card_section.dart';

class RightWidget extends StatelessWidget {
  const RightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardSection(),
        SizedBox(height: 24,),
        IncomeSectionBody(),
      ],
    );
  }
}
