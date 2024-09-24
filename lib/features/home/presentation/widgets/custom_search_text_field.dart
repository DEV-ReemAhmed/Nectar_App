
import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF2F3F2),
            labelText: 'Search Store',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xffF2F3F2)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xffF2F3F2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: KPrimaryColor),
            ),
            prefixIcon: const Icon(
              Icons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
