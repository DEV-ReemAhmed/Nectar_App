import 'package:flutter/material.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/features/onbording/widgets/onBording_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: const OnbordingViewBody(),
    );
  }
}
