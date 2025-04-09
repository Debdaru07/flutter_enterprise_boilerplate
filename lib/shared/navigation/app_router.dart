import 'package:flutter/material.dart';

import '../../features/auth/view/login_screen.dart';
import '../../features/home/view/home_screen.dart';

class AppRouter {
  static const String home = '/home';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    dynamic screenToRedirect;
    switch (settings.name) {
      case home:
        screenToRedirect = const HomeScreen();
      case login:
        screenToRedirect = const LoginScreen();
      default:
        screenToRedirect = Center(child: Text('No route defined'));
    }
    return screenToRedirect;
  }

  wrapper(Widget child) =>
      MaterialPageRoute(builder: (_) => Scaffold(body: child));
}
