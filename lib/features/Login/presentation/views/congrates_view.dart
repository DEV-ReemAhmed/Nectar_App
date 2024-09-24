import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/core/utilies/app_styles.dart';

class CongratesView extends StatefulWidget {
  CongratesView({super.key});

  @override
  State<CongratesView> createState() => _CongratesViewState();
}

class _CongratesViewState extends State<CongratesView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/Login');
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
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(AppImages.congratulation, width: 200),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Congratulations',
            style: Styles.Text26.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            textAlign: TextAlign.center,
            'Your change password proccess is success welcome to our app',
            style: Styles.Text16.copyWith(
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              color: KTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
