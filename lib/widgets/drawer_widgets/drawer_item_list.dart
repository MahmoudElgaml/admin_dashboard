import 'package:flutter/material.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/drawer_item_model.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          DrawerItem(drawerItemModel: items[index]),
      shrinkWrap: true,
      itemCount: items.length,
    );
  }
}
