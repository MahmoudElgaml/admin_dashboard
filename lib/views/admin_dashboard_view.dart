import 'package:flutter/material.dart';
import 'package:res_adap/views/tablet_layout.dart';
import 'package:res_adap/widgets/adabtive_layout.dart';
import 'package:res_adap/widgets/desktop_layout.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/mobile_layout.dart';

class AdminDashBoardView extends StatelessWidget {
  const AdminDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      drawer: MediaQuery.sizeOf(context).width < 800
          ? const Drawer(
              child: DrawerBody(),
            )
          : null,
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
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
