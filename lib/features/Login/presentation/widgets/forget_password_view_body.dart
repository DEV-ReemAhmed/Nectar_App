import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utilies/app_images.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/features/Login/presentation/widgets/reset_password_sheet.dart';
import 'package:nectar/core/utilies/widgets/custom_form_textField.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
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
                  size: 28,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Center(child: Image.asset(AppImages.coloredCarrot)),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Forget Password',
                style: Styles.Text26,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Enter your email for verification process we will send 5 digits code to your email',
                style: Styles.Text14.copyWith(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
