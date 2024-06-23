import 'package:flutter/material.dart';
import 'package:res_adap/widgets/mycard_body/dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key,required this.currentIndex});
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children:
      List.generate(3, (index) =>  Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: DotIndicator(isActive: index==currentIndex),
      )),
    );
  }
}
