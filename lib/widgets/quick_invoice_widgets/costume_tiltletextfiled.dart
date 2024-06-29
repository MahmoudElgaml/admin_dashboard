import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class CostumeTitleTextFiled extends StatelessWidget {
  const CostumeTitleTextFiled({super.key,required this.title,required this.hint});
final  String hint;
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(height: 12,),
        TextField(
          decoration: InputDecoration(
              hintStyle: AppStyle.styleRegular16(context),
              hintText: hint,
              fillColor: const Color(0xFFFAFAFA),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFFAFAFA),
                ),
                borderRadius: BorderRadius.circular(12),
              )),
        )
      ],
    );
  }
}
