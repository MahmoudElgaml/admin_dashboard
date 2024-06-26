import 'package:flutter/material.dart';
import 'package:res_adap/widgets/custome_contanier.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/latest_transaction.dart';
import 'package:res_adap/widgets/quick_invoice_widgets/quickinvoice_header.dart';

import 'button_section.dart';
import 'information_section.dart';

class QuickInvoiceBody extends StatelessWidget {
  const QuickInvoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: CostumeContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 24,
            ),
            LatestTransaction(),
            SizedBox(
              height: 40,
            ),
            InformationSection(),
            SizedBox(
              height: 24,
            ),
            ButtonSection(),
          ],
        ),
      ),
    );
  }
}
