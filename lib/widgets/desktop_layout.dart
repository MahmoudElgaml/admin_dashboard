import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_body.dart';
import 'package:res_adap/widgets/custome_contanier.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/income_section/income_section_body.dart';
import 'package:res_adap/widgets/middle_wiget.dart';
import 'package:res_adap/widgets/my_card_section.dart';
import 'package:res_adap/widgets/mycard_body/my_card_body.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/quick_invoice_body.dart';
import 'package:res_adap/widgets/right_widgets.dart';
import 'package:res_adap/widgets/transaction_history/transaction_history_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: const Row(
        children: [
          Expanded(
            child: DrawerBody(),
          ),
         Expanded(
           flex: 5,
           child: CustomScrollView(
              scrollDirection: Axis.vertical,
             slivers: [
               SliverFillRemaining(
             hasScrollBody: false,
                 child:   Row(
                   children: [
                     Expanded(
                       flex: 3,
                       child: MiddleWidget(),
                     ),
                     Expanded(
                       flex: 2,
                       child: RightWidget(),
                     )
                   ],
                 ),
               )
             ],

           ),
         )
        ],
      ),
    );
  }
}
