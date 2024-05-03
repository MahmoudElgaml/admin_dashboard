import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/utils/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Assets.imagesFrame),
      title: const Text(
        "Lekan Okeowo",
        style: AppStyle.styleSemiBold18,
      ),
      subtitle: const Text(
        "demo@gmail.com",
        style: AppStyle.styleRegular12,
      ),
    );
  }
}
