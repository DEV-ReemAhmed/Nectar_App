import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/core/utilies/app_styles.dart';
import 'package:nectar/features/Login/presentation/widgets/pin_code_field.dart';
import 'package:nectar/features/Login/presentation/widgets/reset_password_sheet_con.dart';
import 'package:nectar/core/utilies/widgets/custom_button.dart';

class ResetPasswordSheet extends StatelessWidget {
  ResetPasswordSheet({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
      child: Form(
        key: formKey,
        child: Container(
          height: MediaQuery.of(context).size.height / 2.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reset Password',
                style: Styles.Text26,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Enter the code that was sent to your email address',
                style: Styles.Text16.copyWith(
                    fontFamily: 'Gilroy-Medium', fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Enter the 6 digits code',
                style: Styles.Text16.copyWith(
                  fontFamily: 'Gilroy-Medium',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const PinCodeField(),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: CustomButton(
                  text: 'Send Code',
                  onTap: () {
                    showBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        context: context,
                        builder: (context) {
                          return ResetPasswordSheetCon();
                        });
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
