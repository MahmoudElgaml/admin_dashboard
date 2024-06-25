import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_adap/generated/assets.dart';
import 'package:res_adap/model/card_model.dart';
import 'package:res_adap/utils/styles.dart';

class TheCard extends StatelessWidget {
  const TheCard({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff5fbef3),
        ),
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesCard,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 31),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "card Name\n",
                            style: AppStyle.styleRegular16.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const TextSpan(
                            text: "Syah Bandi",
                            style: AppStyle.styleMedium20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, bottom: 27),
                      child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "0918 8124 0042 8129\n",
                              style: AppStyle.styleSemiBold24.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const TextSpan(
                              text: "12/20 - 124",
                              style: AppStyle.styleRegular16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
