import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_adap/model/drawer_item_model.dart';
import 'package:res_adap/utils/styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyle.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          fit:  BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            drawerItemModel.title,
            style: AppStyle.styleBold16(context),
          ),
        ),
        trailing: Container(
          width: 3.27,
          decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
        ),
      ),
    );
  }
}
