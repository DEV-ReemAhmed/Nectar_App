import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';
import 'package:nectar/core/utilies/widgets/custom_form_textField.dart';
import 'package:nectar/core/utilies/widgets/custom_password_textField.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(child: Image.asset(AppImages.coloredCarrot)),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Loging',
          style: Styles.Text26,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Enter your Email and password',
          style: Styles.Text16.copyWith(fontFamily: 'Gilroy-Medium'),
        ),
        CustomFormTextField(),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Email',
          style: Styles.Text16.copyWith(
              fontWeight: FontWeight.w600, fontFamily: 'Normal'),
        ),
        CustomFormTextField(),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Password',
          style: Styles.Text16.copyWith(
              fontWeight: FontWeight.w600, fontFamily: 'Normal'),
        ),
        CustomPasswordTextField(),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/ForgetPass');
              },
              child: Text(
                'Forgot password?',
                style: Styles.Text14.copyWith(
                    fontFamily: 'Gilroy-Medium', color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
            child: CustomButton(
          text: 'Log in',
          onTap: () {
            GoRouter.of(context).push('/HomeView');
          },
        )),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an acount? ",
              style: Styles.Text14.copyWith(
                  fontFamily: 'Gilroy-Medium', color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/SignUp');
              },
              child: Text(
                'SignUp',
                style: Styles.Text14.copyWith(
                    fontFamily: 'Gilroy-Medium', color: KPrimaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
