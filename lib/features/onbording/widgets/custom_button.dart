import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/Login');
      },
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
