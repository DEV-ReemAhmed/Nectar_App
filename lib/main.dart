import 'package:flutter/material.dart';
import 'package:nectar/core/utilies/app_router.dart';
import 'package:nectar/features/splash/views/splash_view.dart';

void main() {
  runApp(const Nectar());
}

class Nectar extends StatelessWidget {
  const Nectar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
      );
  }
}
