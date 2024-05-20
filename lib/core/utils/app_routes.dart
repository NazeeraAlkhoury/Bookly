import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static const String splashRoute = '/';
  static const String homeViewRoute = '/homeView';
}

class RouteGenerator {
  static Route<dynamic>? getRoutes(settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case AppRoutes.homeViewRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
    }
    return null;
  }
}
