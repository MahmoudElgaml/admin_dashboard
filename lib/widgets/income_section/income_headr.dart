import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyle.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:  Row(
            children: [
              Text(
                "Monthly",
                style: AppStyle.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(Icons.arrow_back_ios_new)
            ],
          ),
        ),
      ],
    );
  }
}
