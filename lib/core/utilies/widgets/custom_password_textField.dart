import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KPrimaryColor,
      cursorHeight: 25,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                password = !password;
              });
            },
            icon: Icon(
              password == false ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            )),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: KPrimaryColor),
        ),
      ),
      onChanged: (value) {},
      obscureText: password,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is Required';
        }
        return null;
      },
    );
  }
}
