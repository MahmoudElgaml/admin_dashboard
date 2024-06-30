import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/mycard_body/card_pageview.dart';
import 'package:res_adap/widgets/mycard_body/dotindicator_list.dart';

class MyCardBody extends StatefulWidget {
  const MyCardBody({super.key});

  @override
  State<MyCardBody> createState() => _MyCardBodyState();
}



class _MyCardBodyState extends State<MyCardBody> {
  late PageController pageController;
  int currentIndex=0;
  @override

  void initState() {
    pageController=PageController();
    pageController.addListener(() {
      // i use here round instead of int because i need to make condition quickly
      currentIndex=pageController.page!.round();
      setState(() {

      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "My card",
          style: AppStyle.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        CardPageView(pageController: pageController,),
        const SizedBox(height: 20,),
        DotIndicatorList(currentIndex: currentIndex)

      ],
    );
  }
}
