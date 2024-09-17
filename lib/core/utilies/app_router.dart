import 'package:go_router/go_router.dart';
import 'package:nectar/features/onbording/views/onbording_view.dart';
import 'package:nectar/features/splash/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
     GoRoute(
      path: '/OnBording',
      builder: (context, state) => OnbordingView(),
    ),
  ]);
}
