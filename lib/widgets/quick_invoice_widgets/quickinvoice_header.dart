import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text("Quick Invoice",style: AppStyle.styleSemiBold20(context),),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add,color: Colors.blue,),
        )
      ],
    );
  }
}
