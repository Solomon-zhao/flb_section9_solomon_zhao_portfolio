import 'package:flutter/material.dart';
import 'package:solomon_zhao_portfolio/mobile/about_mobile.dart';
import 'package:solomon_zhao_portfolio/web/about_web.dart';
import 'package:solomon_zhao_portfolio/web/contact_web.dart';
import 'package:solomon_zhao_portfolio/web/landing_page_web.dart';

import 'mobile/contact_mobile.dart';
import 'mobile/landing_page_mobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else {
                    return LandingPageMobile();
                  }
                },
              ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return ContactWeb();
                  } else
                    return ContactMobile();
                },
              ),
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return AboutWeb();
                  } else
                    return AboutMobile();
                },
              ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else {
                    return LandingPageMobile();
                  }
                },
              ),
        );
    }
  }
}
