import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/transaction_history/costume_transaction.dart';
import 'package:res_adap/widgets/transaction_history/transaction_header.dart';
import 'package:res_adap/widgets/transaction_history/transaction_list.dart';

import '../../model/transaction_model.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionHistoryHeader(),
        Text(
          "13 April 2022",
          style: AppStyle.styleMedium16(context).copyWith(
            color: Colors.white,
          ),
        ),
        const TransactionList()

      ],
    );
  }
}
