import 'package:flutter/material.dart';
import 'package:res_adap/model/all_expensive_item_model.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_item_header.dart';

class AllExpensiveItem extends StatelessWidget {
  const AllExpensiveItem({super.key, required this.itemModel});

  final AllExpensiveItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensiveItemHeader(
              image: itemModel.image,
            ),
            const SizedBox(height: 34,),
            Text(
              itemModel.title,
              style: AppStyle.styleSemiBold16,
            ),
            const SizedBox(height: 8,),
            Text(
              itemModel.date,
              style: AppStyle.styleRegular14,
            ),
            const SizedBox(height: 16,),
            Text(
              itemModel.price,
              style: AppStyle.styleSemiBold24,
            ),
          ],
        ));
  }
}


