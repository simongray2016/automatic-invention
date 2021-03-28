import 'package:flutter/material.dart';
import 'package:myapp/modules/dashboard/screens/dashboard.dart';
import 'package:myapp/modules/login/screens/login.dart';
import 'package:myapp/modules/settings/screens/account_screen.dart';

const String LoginPath = '/login';
const String DashboardPath = '/dashboard';
const String AccountPath = '/account';

class RouterConfig {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case LoginPath:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => LoginScreen(),
          transitionsBuilder: slideTransition,
          transitionDuration: Duration(milliseconds: 200),
          reverseTransitionDuration: Duration(milliseconds: 200),
        );
        break;
      case DashboardPath:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => DashboardScreen(),
          transitionsBuilder: slideTransition,
          transitionDuration: Duration(milliseconds: 200),
          reverseTransitionDuration: Duration(milliseconds: 200),
        );
        break;
      case AccountPath:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => AccountScreen(),
          transitionsBuilder: slideTransition,
          transitionDuration: Duration(milliseconds: 200),
          reverseTransitionDuration: Duration(milliseconds: 200),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for $settings.name')),
          ),
        );
    }
  }

  static SlideTransition slideTransition(
      context, animation, secondaryAnimation, child) {
    var begin = Offset(1.0, 0.0);
    var end = Offset.zero;
    var tween = Tween(begin: begin, end: end);
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
