import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KPrimaryColor,
      cursorHeight: 25,
      decoration: const InputDecoration(
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: KPrimaryColor),
        ),
      ),
    );
  }
}
