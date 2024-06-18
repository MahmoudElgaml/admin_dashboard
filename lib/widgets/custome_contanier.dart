import 'package:flutter/material.dart';

class CostumeContainer extends StatelessWidget {
  const CostumeContainer({super.key,required this.child,required this.padding});
 final Widget child ;
 final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child

    );
  }
}
