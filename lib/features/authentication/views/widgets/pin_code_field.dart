import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: KPrimaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: PinCodeTextField(
          appContext: context,
          length: 6,
          cursorHeight: 18,
          cursorColor: Colors.grey,
          enableActiveFill: true,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            fieldWidth: 50,
            fieldHeight: 50,
            inactiveColor: KPrimaryColor,
            activeColor: KPrimaryColor,
            errorBorderColor: Colors.red,
            errorBorderWidth: 1,
            selectedColor: KPrimaryColor,
            selectedFillColor: KPrimaryColor,
            activeFillColor: KPrimaryColor,
            inactiveFillColor: KPrimaryColor,
            disabledColor: KPrimaryColor,
            activeBorderWidth: 5,
            borderWidth: 1,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
