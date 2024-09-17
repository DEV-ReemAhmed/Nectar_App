
import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(16)),
        child: const Center(
          child: Text(
            'Get Started',
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
