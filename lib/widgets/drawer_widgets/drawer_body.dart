import 'package:flutter/material.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/drawer_item_model.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item_list.dart';
import 'package:res_adap/widgets/drawer_widgets/user_info.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfo(),
          SizedBox(
            height: 8,
          ),
          DrawerItemList(),
          Spacer(),
          DrawerItem(
            drawerItemModel: DrawerItemModel(
                image: Assets.imagesSetting, title: "Setting system"),
          ),
          DrawerItem(
            drawerItemModel: DrawerItemModel(
                image: Assets.imagesLogout, title: "Logout account"),
          ),
        ],
      ),
    );
  }
}
