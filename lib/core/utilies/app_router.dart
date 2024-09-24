import 'package:go_router/go_router.dart';
import 'package:nectar/features/Login/presentation/views/congrates_view.dart';
import 'package:nectar/features/Login/presentation/views/forget_password_view.dart';
import 'package:nectar/features/home/presentation/views/home_view.dart';
import 'package:nectar/features/onbording/presentation/views/onbording_view.dart';
import 'package:nectar/features/Login/presentation/views/Login_view.dart';
import 'package:nectar/features/singUp/presentation/views/SignUp_view.dart';
import 'package:nectar/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kBoarding = '/OnBoarding';
  static const kLogin = '/Login';
  static const kSingUp = '/SignUp';
  static const kForgetPass = '/ForgetPass';
  static const kHome = '/HomeView';
  static const kCongrates = '/Congrates';

  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kBoarding,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: kLogin,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: kSingUp,
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
      path: kForgetPass,
      builder: (context, state) => ForgetPasswordView(),
    ),
    GoRoute(
      path: kCongrates,
      builder: (context, state) => CongratesView(),
    ),
    GoRoute(
      path: kHome,
      builder: (context, state) => HomeView(),
    ),
  ]);
}
