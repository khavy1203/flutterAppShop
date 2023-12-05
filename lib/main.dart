import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter/routes/app_page.dart';

import 'package:mobileflutter/routes/app_route.dart';
import 'package:mobileflutter/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRouter.dashboard,
      debugShowCheckedModeBanner: true,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}

