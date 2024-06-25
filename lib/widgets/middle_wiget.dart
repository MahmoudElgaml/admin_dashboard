import 'package:flutter/material.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_body.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/quick_invoice_body.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AllExpensiveBody(),
        const QuickInvoiceBody(),
      ],
    );
  }
}
