import 'package:flutter/material.dart';
import 'package:metromate/discovery_screen.dart';
import 'package:metromate/otp_screen.dart';
import 'package:metromate/phonenumber_screen.dart';

import '../login_screen.dart';
import '../notfound_screen.dart';

abstract class NavigationRoutes {
  static const String login = '/login';
  static const String otp = "/otp";
  static const String phoneNumber = "/phoneNumber";
  static const String discovery="/discovery";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case NavigationRoutes.otp:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case NavigationRoutes.phoneNumber:
        return MaterialPageRoute(builder: (_) => const PhoneNumberScreen());
      case NavigationRoutes.discovery:
        return MaterialPageRoute(builder: (_) => const DiscoveryScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
