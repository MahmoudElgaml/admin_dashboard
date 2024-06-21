import 'package:flutter/material.dart';
import 'package:res_adap/model/card_model.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/custome_contanier.dart';
import 'package:res_adap/widgets/mycard_body/the_card.dart';

class MyCardBody extends StatelessWidget {
  const MyCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CostumeContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My card",
            style: AppStyle.styleSemiBold20,
          ),
          SizedBox(height: 20,),
          TheCard(
            card:
                CardModel(name: "fafsa", cardNumber: "fadf", expireDate: "sfa"),
          ),
        ],
      ),
    );
  }
}
