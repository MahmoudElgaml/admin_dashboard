import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensiveItemHeader extends StatelessWidget {
  const AllExpensiveItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        const Spacer(),
        const Icon(Icons.arrow_back_ios),
      ],
    );
  }
}