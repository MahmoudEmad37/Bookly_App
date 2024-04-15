import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/constants_manager.dart';
import 'package:bookly/core/resourses/routes_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: AppConstants.transtionDuration);

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppImageAssets.logo),
        const SizedBox(
          height: AppSize.s4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      AppConstants.delayedDuration,
      () {
        // Get.to(() => const HomePage(),
        //     transition: Transition.fade,
        //     duration: AppConstants.transtionDuration);

        GoRouter.of(context).push(AppRouter.homePage);
      },
    );
  }
}
