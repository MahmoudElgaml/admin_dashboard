import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title:  Text(
        "Transaction History",
        style: AppStyle.styleSemiBold20(context),
      ),
      trailing: TextButton(
        onPressed: () {},
        child:  Text(
          "see all",
          style: AppStyle.styleMedium16(context),
        ),
      ),
    );
  }
}
