import 'package:flutter/material.dart';
import 'package:res_adap/model/transaction_model.dart';
import 'package:res_adap/utils/styles.dart';

class CostumeTransaction extends StatelessWidget {
  const CostumeTransaction({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFAFAFA),
        ),
        child: ListTile(
          title: Text(
            transactionModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style:
                AppStyle.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.transactionAmount,
            style: AppStyle.styleSemiBold20
                .copyWith(color: const Color(0xff7DD97B)),
          ),
        ),
      ),
    );
  }
}
