import 'package:flutter/material.dart';
import 'package:res_adap/widgets/adabtive_layout.dart';
import 'package:res_adap/widgets/desktop_layout.dart';

class AdminDashBoardView extends StatelessWidget {
  const AdminDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          desktop: (context) => const DesktopLayout(),
          mobile: (context) => const SizedBox(),
          tablet: (context) => const SizedBox()),
    );
  }
}
