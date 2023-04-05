import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spoonacular/theme/light_theme.dart';

import 'helper/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      theme: light,
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
