import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/model/card_model.dart';
import 'package:res_adap/widgets/mycard_body/the_card.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key,required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(

      controller:pageController ,
      itemCount: 3,
      itemBuilder: (context, index) => TheCard(
        card: CardModel(
          name: "fafsa",
          cardNumber: "fadf",
          expireDate: "sfa",
        ),
      ),
    );
  }
}
