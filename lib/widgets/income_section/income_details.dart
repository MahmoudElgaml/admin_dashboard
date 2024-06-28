import 'package:flutter/material.dart';
import 'package:res_adap/model/income_detail_model.dart';
import 'package:res_adap/utils/styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailModel> items = [
    IncomeDetailModel(
      color: Color(0xFF208BC7),
      title: "Design service",
      value: "40",
    ),
    IncomeDetailModel(
      color: Color(0xFF4DB7F2),
      title: "Design service",
      value: "25",
    ),
    IncomeDetailModel(
      color: Color(0xFF064060),
      title: "Design service",
      value: "20",
    ),
    IncomeDetailModel(
      color: Color(0xFFE2DECD),
      title: "Design service",
      value: "22",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => IncomeDetailItem(
                item: e,
              ))
          .toList(),
    );
    return ListView.builder(
      //  shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => IncomeDetailItem(
        item: items[index],
      ),
    );
  }
}

class IncomeDetailItem extends StatelessWidget {
  const IncomeDetailItem({super.key, required this.item});

  final IncomeDetailModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: item.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        item.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        item.value,
        style: AppStyle.styleMedium16(context),
      ),
    );
  }
}
