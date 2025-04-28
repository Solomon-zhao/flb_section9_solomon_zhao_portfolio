import 'package:flutter/material.dart';
import 'package:solomon_zhao_portfolio/mobile/landing_page_mobile.dart';
import 'package:solomon_zhao_portfolio/web/landing_page_web.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:solomon_zhao_portfolio/routes.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: "/",
    );
  }
}
