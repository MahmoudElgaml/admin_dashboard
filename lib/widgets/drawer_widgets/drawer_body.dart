import 'package:flutter/material.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/drawer_item_model.dart';
import 'package:res_adap/model/user_info_model.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_item_list.dart';
import 'package:res_adap/widgets/drawer_widgets/user_info.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(

          slivers: [
        SliverToBoxAdapter(
          child: UserInfo(
            user: UserModel(
                name: "Madrani Andi",
                email: "Madraniadi20@gmail",
                image: Assets.imagesAvatar2),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemList(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                ),
              ),
              DrawerItem(
                isActive: false,
                drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSetting, title: "Setting system"),
              ),
              DrawerItem(
                isActive: false,
                drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout, title: "Logout account"),
              ),
              SizedBox(
                height: 48,
              )
            ],
          ),
        ),

      ]),
    );
  }
}
