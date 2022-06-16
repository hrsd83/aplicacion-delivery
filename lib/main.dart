import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_delivery/src/pages/login/login_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Delivery',
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => LoginPage())],
      navigatorKey: Get.key,
    );
  }
}
