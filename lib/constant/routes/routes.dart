import 'package:flutter/material.dart';
import 'package:siddhartha_bank_ui/features/homepage/presentation/views/homepage.dart';
import 'package:siddhartha_bank_ui/features/login/presentation/views/login_screen.dart';
import 'package:siddhartha_bank_ui/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:siddhartha_bank_ui/features/payment/presentation/view/payment_screen.dart';

class AppRoutes {
  // define name of routes
  static const String homepage = '/homepage';
  static const String onboardscreen = '/onboardscreen';
  static const String payment = '/payment';
  static const String loginscreen = '/loginscreen';

  // routes map
  static Map<String, WidgetBuilder> routes() {
    return {
      homepage: (context) => const Homepage(),
      onboardscreen: (context) => const OnboardingScreen(),
      payment: (context) => const PaymentScreen(),
      loginscreen: (context) => const LoginScreen(),
    };
  }
}
