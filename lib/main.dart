import 'package:flutter/material.dart';
import "package:doctor/constants/variables.dart";
import 'package:doctor/router.dart';
import "package:doctor/features/LogIn/screens/LogIn_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'my first app',
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme:
              const ColorScheme.light(primary: GlobalVariables.primaryColors),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.red),
          ),
        ),
        onGenerateRoute: ((settings) => generateRoute(settings)),
        home: const LogInScreen());
  }
}
