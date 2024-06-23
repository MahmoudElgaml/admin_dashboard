import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/transaction_history/costume_transaction.dart';
import 'package:res_adap/widgets/transaction_history/transaction_header.dart';

import '../../model/transaction_model.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  static const List<TransactionModel> transactionList = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      transactionAmount: "20,129",
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM ",
      transactionAmount: "2,000",
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 ",
      transactionAmount: "20,129",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionHistoryHeader(),
        Text(
          "13 April 2022",
          style: AppStyle.styleMedium16.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(

              padding: const EdgeInsets.only(bottom: 12),
              child: CostumeTransaction(
                transactionModel: transactionList[index],
              ),
            ),
            itemCount: transactionList.length,
          ),
        ),
      ],
    );
  }
}
