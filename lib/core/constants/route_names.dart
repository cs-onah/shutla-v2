import 'package:flutter/material.dart';
import 'package:shutla_v2/ui/features/onboarding/pages/login_screen.dart';
import 'package:shutla_v2/ui/features/onboarding/pages/master_screen.dart';
import 'package:shutla_v2/ui/features/onboarding/pages/splash_screen.dart';

class RouteNames {
  ///Route names used through out the app will be specified as static constants here in this format
  /// static const String splashScreen = '/splashScreen';

  static const String splashScreen = 'splashScreen';
  static const String masterScreen = 'masterScreen';
  static const String loginScreen = 'loginScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case masterScreen:
        return MaterialPageRoute(builder: (context) => const MasterScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => errorView(settings.name),
        );
    }
  }

  static Widget errorView(String? name) {
    return Scaffold(body: Center(child: Text('404 $name View not found')));
  }
}
