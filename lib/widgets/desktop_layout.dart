import 'package:flutter/material.dart';
import 'package:res_adap/widgets/drawer_widgets/drawer_body.dart';
import 'package:res_adap/widgets/middle_wiget.dart';
import 'package:res_adap/widgets/right_widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child:  const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Expanded(
            child: DrawerBody(),
          ),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top:20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: MiddleWidget(),
                      ),
                      Expanded(
                        flex: 2,
                        child: RightWidget(),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
