import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class AllExpensiveHeader extends StatelessWidget {
  const AllExpensiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Expenses",
          style: AppStyle.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyle.styleMedium16.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                  width: 18
              ),
              const Icon(Icons.arrow_back_ios),
            ],
          ),
        )
      ],
    );
  }
}