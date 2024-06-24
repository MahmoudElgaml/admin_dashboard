import 'package:flutter/material.dart';

import 'custome_contanier.dart';
import 'mycard_body/my_card_body.dart';
import 'transaction_history/transaction_history_body.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CostumeContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardBody(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          TransactionHistoryBody()
        ],
      ),
    );
  }
}
