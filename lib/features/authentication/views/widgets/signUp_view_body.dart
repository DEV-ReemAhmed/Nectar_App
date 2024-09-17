import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/features/authentication/views/widgets/custom_form_textField.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';

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
        Center(child: Image.asset('assets/images/carrot.png')),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Sign Up',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Enter your credentials to continue',
          style: TextStyle(color: Colors.grey),
        ),
        CustomFormTextField(),
        // const SizedBox(
        //   height: 10,
        // ),
        Text(
          'Username',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        CustomFormTextField(),
        // const SizedBox(
        //   height: 30,
        // ),
        const Text(
          'Email',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        CustomFormTextField(),
        // const SizedBox(
        //   height: 20,
        // ),
        const Text(
          'Password',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        CustomFormTextField(),
        Row(
          children: [
            const Text(
              'By continuing you agree to our ',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const Text(
              'Terms of Service',
              style: TextStyle(
                color: KPrimaryColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text(
              'and ',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const Text(
              'Privacy Policy',
              style: TextStyle(color: KPrimaryColor, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(child: CustomButton(text: 'SignUp')),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an acount? "),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/Login');
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: KPrimaryColor, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
