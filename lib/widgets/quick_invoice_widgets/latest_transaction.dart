import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/user_info_model.dart';
import 'package:res_adap/utils/styles.dart';
import 'package:res_adap/widgets/drawer_widgets/user_info.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  static const List<UserModel> items = [
    UserModel(
        name: "Madrani Andi",
        email: "Madraniadi20@gmail",
        image: Assets.imagesAvatar2),
    UserModel(
        name: "Madrani Andi",
        email: "Madraniadi20@gmail",
        image: Assets.imagesAvatar3),
    UserModel(
        name: "Madrani Andi",
        email: "Madraniadi20@gmail",
        image: Assets.imagesAvatar4),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyle.styleMedium16(context).copyWith(color: Colors.black),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map((e) => IntrinsicWidth(
                        child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: UserInfo(
                        user: e,
                      ),
                    )))
                .toList(),
          ),
        )
      ],
    );
  }
}
