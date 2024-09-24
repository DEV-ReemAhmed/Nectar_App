

import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: IconButton(
            padding: EdgeInsets.only(),
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: Colors.white,
          ),
        ));
  }
}
