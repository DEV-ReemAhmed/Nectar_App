import 'package:flutter/material.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Onbordingcon(),
    );
  }
}

class Onbordingcon extends StatelessWidget {
  const Onbordingcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Image(image: AssetImage('assets/images/logo.png')),
      SizedBox(
        height: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            'Welcome \nto our store',
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: 'Gilroy',
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Get your groseries in as fast as one hour',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Gilroy-medium',
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 60,
          ),
          CustomButton(
            text: 'Get started',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    ]);
  }
}
