import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return GetMaterialApp(
            themeMode: currentMode,
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            title: 'Scientist Info App',
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          );
        });
  }
}
