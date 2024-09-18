import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/authentication/views/congrates_view.dart';
import 'package:nectar/features/authentication/views/widgets/custom_form_textField.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';

class ResetPasswordSheetCon extends StatelessWidget {
  ResetPasswordSheetCon({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
      child: Form(
        key: formKey,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          height: MediaQuery.of(context).size.height / 1.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reset Password',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  'Enter new password to your account to reset password'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              CustomFormTextField(),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              CustomFormTextField(),
              const Text(
                'Confirm Password',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              CustomFormTextField(),
              Center(
                child: CustomButton(
                  text: 'Reset Password',
                  onTap: () {
                    GoRouter.of(context).push('/Congratulations');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
