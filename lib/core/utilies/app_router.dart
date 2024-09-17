import 'package:go_router/go_router.dart';
import 'package:nectar/features/onbording/views/onbording_view.dart';
import 'package:nectar/features/authentication/views/Login_view.dart';
import 'package:nectar/features/authentication/views/signUp_view.dart';
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
      GoRoute(
      path: '/Login',
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => SignUpView(),
    ),
  ]);
}
