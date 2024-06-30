import 'package:flutter/material.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/drawer_item_model.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key,});


  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int selectedIndex = 0;
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) =>
          InkWell(
            onTap: () {
              selectedIndex = index;
              setState(() {

              });
            },
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive:selectedIndex==index,
            ),
          ),

      itemCount: items.length,
    );
  }
}
