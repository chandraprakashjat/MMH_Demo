import 'package:flutter/material.dart';
import 'package:mmh_demo/presentation/screen/home/home_screen.dart';
import 'package:mmh_demo/presentation/screen/otp/otp_screen.dart';
import 'package:mmh_demo/presentation/screen/success/account_success.dart';

import '../presentation/screen/option/option_screen.dart';
import '../presentation/screen/sign_in/sign_in_screen.dart';
import '../presentation/screen/sign_up/sign_up_screen.dart';

const optionRoute = '/optionScreen';
const loginRoute = '/loginScreen';
const signUpRoute = '/signUpScreen';
const otpRoute = '/OtpScreen';
const homeRoute = '/homeScreen';
const successRoute = '/successScreen';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const OptionScreen());

      case loginRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case otpRoute:
        return MaterialPageRoute(builder: (_) => const OtpScreen());

      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case successRoute:
        return MaterialPageRoute(builder: (_) => const AccountSuccessScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child:
                          Text('No route defined for ${routeSettings.name}')),
                ));
    }
  }
}
