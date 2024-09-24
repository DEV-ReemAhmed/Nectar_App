import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';

class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 420,
      ),
      Image.asset(AppImages.whiteCarrot),
      const SizedBox(
        height: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 41,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontFamily: 'Gilory',
            ),
          ),
          Text(
            'to our store',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontFamily: 'Gilory',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Get your groseries in as fast as one hour',
            style: Styles.Text14.copyWith(fontFamily: 'Gilroy-Medium'),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            text: 'Get started',
            onTap: () {
              GoRouter.of(context).push('/Login');
            },
          ),
        ],
      ),
    ]);
  }
}
