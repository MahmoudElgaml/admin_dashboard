import 'package:flutter/material.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/all_expensive_item_model.dart';
import 'package:res_adap/widgets/all_expensive_widgets/all_expensive_item.dart';
import 'package:res_adap/widgets/custome_contanier.dart';

import 'all_expensive_header.dart';

class AllExpensiveBody extends StatefulWidget {
  const AllExpensiveBody({super.key});

  static const List<AllExpensiveItemModel> items = [
    AllExpensiveItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensiveItemModel(
        image: Assets.imagesBallance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensiveItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];

  @override
  State<AllExpensiveBody> createState() => _AllExpensiveBodyState();
}

class _AllExpensiveBodyState extends State<AllExpensiveBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
      child: CostumeContainer(
        padding: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AllExpensiveHeader(),
            const SizedBox(
              height: 16,
            ),
            Row(
                children: AllExpensiveBody.items.asMap().entries.map((e) {
              return Expanded(
                child: e.key == selectedIndex
                    ? InkWell(
                        onTap: () {
                          ChangeIndex(e.key);
                        },
                        child: AllExpensiveItemActive(itemModel: e.value))
                    : InkWell(
                        onTap: () {
                          ChangeIndex(e.key);
                        },
                        child: AllExpensiveItemInActive(itemModel: e.value)),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }

  ChangeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
