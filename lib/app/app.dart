import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memes/app/config/app_pages.dart';

class App extends StatelessWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: "Memes App",
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
