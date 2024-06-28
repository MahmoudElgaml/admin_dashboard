import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/user_info_model.dart';
import 'package:res_adap/utils/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8)
      ),
      child: ListTile(
        leading: SvgPicture.asset(user.image),
        title: Text(
          user.name,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          user.email,
          style: AppStyle.styleRegular12(context),
        ),
      ),
    );
  }
}
