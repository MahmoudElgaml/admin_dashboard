import 'package:flutter/material.dart';
import 'package:res_adap/model/all_expensive_item_model.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_item_header.dart';

class AllExpensiveItemInActive extends StatelessWidget {
  const AllExpensiveItemInActive({super.key, required this.itemModel});

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


            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyle.styleSemiBold16(context),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyle.styleRegular14(context),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
               fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyle.styleSemiBold24(context),
              ),
            ),
          ],
        ));
  }
}

class AllExpensiveItemActive extends StatelessWidget {
  const AllExpensiveItemActive({super.key, required this.itemModel});

  final AllExpensiveItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(


        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensiveItemHeader(
              iconColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox(
              height: 30,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
