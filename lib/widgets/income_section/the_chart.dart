import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/widgets/income_section/income_details.dart';

class TheChart extends StatefulWidget {
  const TheChart({super.key});

  @override
  State<TheChart> createState() => _TheChartState();
}

class _TheChartState extends State<TheChart> {
  int isActive = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:  CrossAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              getPieChartData(),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
          flex: 2,
          child: IncomeDetails(),
        )
      ],
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, res) {
            isActive = res?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            radius: isActive == 0 ? 40 : 30,
            color: const Color(0xff208CC8),
            value: 40,
          ),
          PieChartSectionData(
            radius: isActive == 1 ? 40 : 30,
            color: const Color(0xff4EB7F2),
            value: 25,
          ),
          PieChartSectionData(
            radius: isActive == 2 ? 40 : 30,
            color: const Color(0xff064061),
            value: 20,
          ),
          PieChartSectionData(
            radius: isActive == 3 ? 40 : 30,
            color: const Color(0xffE2DECD),
            value: 22,
          ),
        ]);
  }
}
