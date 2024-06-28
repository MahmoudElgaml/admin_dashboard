import 'package:flutter/material.dart';
import 'package:res_adap/utils/size_config.dart';
import 'package:res_adap/views/tablet_layout.dart';
import 'package:res_adap/widgets/adabtive_layout.dart';
import 'package:res_adap/widgets/desktop_layout.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/mobile_layout.dart';

class AdminDashBoardView extends StatefulWidget {
  const AdminDashBoardView({super.key});

  @override
  State<AdminDashBoardView> createState() => _AdminDashBoardViewState();
}

class _AdminDashBoardViewState extends State<AdminDashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const DrawerBody() : null,
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      body: AdaptiveLayout(
          desktop: (context) => const DesktopLayout(),
          mobile: (context) => const MobileLayout(),
          tablet: (context) => const TabletLayout()),
    );
  }
}
