import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensiveItemHeader extends StatelessWidget {
  const AllExpensiveItemHeader(
      {super.key, required this.image, this.iconColor});

  final String image;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                //  padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.10000000149011612),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        const Icon(Icons.arrow_back_ios),
      ],
    );
  }
}
