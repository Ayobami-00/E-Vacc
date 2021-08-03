import 'package:e_vacc_app/features/authentication/index.dart';
import 'package:flutter/material.dart';
import 'route_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case signInRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => const SignInScreen());

    default:
      return MaterialPageRoute(builder: (BuildContext context) => Container());
  }
}
