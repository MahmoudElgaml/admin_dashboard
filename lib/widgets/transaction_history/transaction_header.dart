import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: const Text(
        "Transaction History",
        style: AppStyle.styleSemiBold20,
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          "see all",
          style: AppStyle.styleMedium16,
        ),
      ),
    );
  }
}
