import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,


      child: Container(
        width: 330,
        height: 60,
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
