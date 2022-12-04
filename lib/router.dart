import 'package:doctor/features/LogIn/screens/LogIn_screen.dart';

import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LogInScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LogInScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("screen does not exist")),
        ),
      );
  }
}
