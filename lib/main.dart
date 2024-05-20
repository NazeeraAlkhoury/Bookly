import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kPrimaryColor,
      ),
      home: const SplashView(),
      onGenerateRoute: RouteGenerator.getRoutes,
      initialRoute: AppRoutes.splashRoute,
    );
  }
}
