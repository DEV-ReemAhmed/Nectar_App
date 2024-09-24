import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/features/home/presentation/widgets/custom_add_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        color: Colors.white,
      ),
      height: 200,
      width: 170,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 19),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/banana.png',
                  width: 100,
                  height: 90,
                ),
              ),
              const Text(
                'Organic bananas',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '7pcs, price eg',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(r'$' '4.29',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 55,
                  ),
                  CustomAddButton(),
                ],
              ),
            ]),
      ),
    );
  }
}
