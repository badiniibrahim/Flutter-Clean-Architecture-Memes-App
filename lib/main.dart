import 'package:flutter/material.dart';
import 'package:memes/app/app.dart';
import 'package:memes/app/config/app_pages.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;

  runApp(App(
    initialRoute: initialRoute,
  ));
}
