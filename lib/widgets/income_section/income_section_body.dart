import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/income_section/income_headr.dart';
import 'package:res_adap/widgets/income_section/the_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: const Column(
        children: [
          IncomeHeader(),
          TheChart()
        ],
      ),
    );
  }
}
