import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

import 'all_expensive_header.dart';

class AllExpensiveBody extends StatelessWidget {
  const AllExpensiveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [AllExpensiveHeader(),],
      ),
    );
  }
}


