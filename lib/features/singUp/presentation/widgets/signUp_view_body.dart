import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/core/utilies/widgets/custom_form_textField.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';
import 'package:nectar/core/utilies/widgets/custom_password_textField.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
          'Sign Up',
          style: Styles.Text26,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Enter your credentials to continue',
          style: Styles.Text16.copyWith(fontFamily: 'Gilroy-Medium'),
        ),
        CustomFormTextField(),
        Text(
          'Username',
          style: Styles.Text16.copyWith(
              fontWeight: FontWeight.w600, fontFamily: 'Normal'),
        ),
        CustomFormTextField(),
        Text(
          'Email',
          style: Styles.Text16.copyWith(
              fontWeight: FontWeight.w600, fontFamily: 'Normal'),
        ),
        CustomFormTextField(),
        Text(
          'Password',
          style: Styles.Text16.copyWith(
              fontWeight: FontWeight.w600, fontFamily: 'Normal'),
        ),
        CustomPasswordTextField(),
        Row(
          children: [
            Text(
              'By continuing you agree to our ',
              style: Styles.Text14.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy-Medium'),
            ),
            Text(
              'Terms of Service',
              style: Styles.Text14.copyWith(
                  fontSize: 13,
                  color: KPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy-Medium'),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'and ',
              style: Styles.Text14.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy-Medium'),
            ),
            Text(
              'Privacy Policy',
              style: Styles.Text14.copyWith(
                  fontSize: 13,
                  color: KPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy-Medium'),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
            child: CustomButton(
          text: 'SignUp',
          onTap: () {
            GoRouter.of(context).push('/SignUp');
          },
        )),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an acount? ",
              style: Styles.Text14.copyWith(
                  fontFamily: 'Gilroy-Medium', color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/Login');
              },
              child: Text(
                'Login',
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
