import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utilies/app_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement('/OnBoarding');
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.splashImg,
                width: 280.42,
                height: 70.61,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
