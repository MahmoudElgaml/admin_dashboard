import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/costume_tiltletextfiled.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CostumeTitleTextFiled(
              hint: "Type customer name",
              title: "Customer name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CostumeTitleTextFiled(
              hint: "Type customer email",
              title: "Customer Email",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CostumeTitleTextFiled(
                    title: "Item name", hint: "Type customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CostumeTitleTextFiled(
                    title: "Item name", hint: "Type customer name")),
          ],
        )
      ],
    );
  }
}
