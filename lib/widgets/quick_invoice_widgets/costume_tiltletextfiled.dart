import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class CostumeTitleTextFiled extends StatelessWidget {
  const CostumeTitleTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Customer name",style: AppStyle.styleMedium16,),
      ],
    );
  }
}
