import 'package:flutter/material.dart';

class CongratesView extends StatelessWidget {
  CongratesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset('assets/images/congratulations.png', width: 200),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Congratulations',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
              textAlign: TextAlign.center,
              'Your change password proccess is success welcome to our App'),
        ],
      ),
    );
  }
}
