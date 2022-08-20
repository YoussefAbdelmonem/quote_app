
import 'package:flutter/material.dart';
import 'package:quotes/config/app_route/app_route.dart';
import 'package:quotes/config/app_theme/app_theme.dart';
import 'package:quotes/core/utils/app_strings.dart';


class QuotesApp extends StatelessWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}