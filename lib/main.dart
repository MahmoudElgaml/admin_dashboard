import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/views/admin_dashboard_view.dart';

void main() {
  runApp(
    const MyApp(), // Wrap your app

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: AdminDashBoardView(),
    );
  }
}
