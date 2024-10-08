import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/features/Login/presentation/widgets/Login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.backLogSign),
                fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16),
              child: LoginViewBody(),
            ),
          ),
        ));
  }
}
