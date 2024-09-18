import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/features/authentication/views/widgets/pin_code_field.dart';
import 'package:nectar/features/authentication/views/widgets/reset_password_sheet_con.dart';
import 'package:nectar/features/onbording/widgets/custom_button.dart';

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
              const Text(
                'Reset Password',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Enter the code sent to your Email address'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Enter the 6 code digits',
                style: TextStyle(fontWeight: FontWeight.w500),
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
