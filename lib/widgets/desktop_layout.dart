import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_body.dart';
import 'package:res_adap/widgets/custome_contanier.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/income_section/income_section_body.dart';
import 'package:res_adap/widgets/my_card_section.dart';
import 'package:res_adap/widgets/mycard_body/my_card_body.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/quick_invoice_body.dart';
import 'package:res_adap/widgets/transaction_history/transaction_history_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Row(
        children: [
          const Expanded(
            child: DrawerBody(),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensiveBody(),
                  const QuickInvoiceBody(),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 MyCardSection(),
                  IncomeSectionBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
