import 'package:flutter/material.dart';
import 'package:siddhartha_bank_ui/features/homepage/presentation/views/homepage.dart';
import 'package:siddhartha_bank_ui/features/login/presentation/views/login_screen.dart';
import 'package:siddhartha_bank_ui/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:siddhartha_bank_ui/features/payment/presentation/view/payment_screen.dart';
import 'package:siddhartha_bank_ui/features/profile/presentation/view/profile_screen.dart';
import 'package:siddhartha_bank_ui/features/sendmoney/presentation/view/send_money.dart';

class AppRoutes {
  // define name of routes
  static const String homepage = '/homepage';
  static const String onboardscreen = '/onboardscreen';
  static const String payment = '/payment';
  static const String loginscreen = '/loginscreen';
  static const String sendmoney = '/sendmoney';
  static const String profile = '/profile';

  // routes map
  static Map<String, WidgetBuilder> routes() {
    return {
      homepage: (context) => const Homepage(),
      onboardscreen: (context) => const OnboardingScreen(),
      payment: (context) => const PaymentScreen(),
      loginscreen: (context) => const LoginScreen(),
      sendmoney: (context) => const SendMoney(),
      profile: (context) => const ProfileScreen(),
    };
  }
}
