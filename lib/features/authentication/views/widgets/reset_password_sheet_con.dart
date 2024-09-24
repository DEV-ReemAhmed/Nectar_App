import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/features/authentication/views/congrates_view.dart';
import 'package:nectar/core/utilies/widgets/custom_form_textField.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';

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
                style: Styles.Text26,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Enter new password to your account to reset password',
                style: Styles.Text16.copyWith(
                    fontFamily: 'Gilroy-Medium', fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Email',
                style: Styles.Text16.copyWith(
                    fontWeight: FontWeight.w600, fontFamily: 'Normal'),
              ),
              CustomFormTextField(),
              Text(
                'Password',
                style: Styles.Text16.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Normal',
                ),
              ),
              CustomFormTextField(),
              Text(
                'Confirm Password',
                style: Styles.Text16.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Normal',
                ),
              ),
              CustomFormTextField(),
              Center(
                child: CustomButton(
                  text: 'Reset Password',
                  onTap: () {
                    GoRouter.of(context).push('/Congrates');
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
