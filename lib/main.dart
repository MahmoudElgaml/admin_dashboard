import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:res_adap/views/admin_dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(

      enabled:  true,
        builder:(context)=> const MyApp()), // Wrap your app

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const AdminDashBoardView(),
    );
  }
}
