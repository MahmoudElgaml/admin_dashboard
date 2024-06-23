import 'package:flutter/material.dart';
import 'package:res_adap/model/transaction_model.dart';

class CostumeTransaction extends StatelessWidget {
  const CostumeTransaction({super.key,required this.transactionModel});
  final  TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListTile(
         title: Text(transactionModel.title),
      ),
    );
  }
}
