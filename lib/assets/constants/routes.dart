import 'package:flutter/material.dart';
import '../../core/pages/error.dart';
import '../../core/pages/splash_screen.dart';
import '../../features/authentication/presentation/login_screen.dart';
import '../../features/authentication/presentation/pages/create_new_passwort/create_password_page.dart';
import '../../features/authentication/presentation/pages/forgot_password/forgot_password_page.dart';
import '../../features/authentication/presentation/pages/sign_up_page/sign_up.dart';
import '../../features/authentication/presentation/pages/verification/verification_page.dart';
import '../../features/create/presentation/creade_screen.dart';
import '../../features/home/home.dart';
import '../../features/on_boarding/on_boarding.dart';


class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
       
      case "/onBoarding":
        return MaterialPageRoute(builder: (context) => const OnBoarding());
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case "/ForgotPassword":
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordPage());
      case "/SignUp":
        return MaterialPageRoute(builder: (context) => const SignUp());
      case "/VerificationPage":
        return MaterialPageRoute(
            builder: (context) => const VerificationPage());
      case "/CreatePassword":
        return MaterialPageRoute(builder: (context) => const CreatePasswort());
      case "/CreateTaskMenu":
        return MaterialPageRoute(builder: (context) => const CreateScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
