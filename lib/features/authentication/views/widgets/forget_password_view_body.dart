import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/authentication/views/widgets/reset_password_sheet.dart';
import 'package:nectar/features/authentication/views/widgets/custom_form_textField.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 33,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Center(child: Image.asset('assets/images/carrot.png')),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Forget Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter your Email for verfiction proccess we wiil send 6 digits code to ypur Email',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email',
              style: TextStyle(color: Colors.grey),
            ),
            CustomFormTextField(),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CustomButton(
                text: 'Continue',
                onTap: () {
                  showBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      context: context,
                      builder: (context) {
                        return ResetPasswordSheet();
                      });
                },
              ),
            ),
          ]),
    );
  }
}
