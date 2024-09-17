import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';
import 'package:nectar/features/authentication/views/widgets/custom_form_textField.dart';

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
        Center(child: Image.asset('assets/images/carrot.png')),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Loging',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Enter your Email and password',
          style: TextStyle(color: Colors.grey),
        ),
        CustomFormTextField(),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Email',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        CustomFormTextField(),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Password',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        CustomFormTextField(),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Forgot password?',
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(child: CustomButton(text: 'Log in')),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an acount? "),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/SignUp');
              },
              child: Text(
                'SignUp',
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
