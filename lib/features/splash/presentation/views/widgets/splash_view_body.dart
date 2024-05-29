import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slideAnimation;
  late AnimationController slideAnimationController;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigatorToHomeView();
  }

  @override
  void dispose() {
    slideAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppAssets.logo,
        ),
        SizedBox(
          height: AppDimensions.h10(context),
        ),
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }

  void initSlideAnimation() {
    slideAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 50), end: const Offset(0, 0))
            .animate(slideAnimationController);
    slideAnimationController.forward();
  }

  Future navigatorToHomeView() {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.homeViewRoute);
      },
    );
  }
}
