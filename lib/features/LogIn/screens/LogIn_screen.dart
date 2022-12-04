import 'package:flutter/material.dart';
import "package:doctor/common/form_field.dart";
import 'package:doctor/features/LogIn/widgets/custom_button.dart';

enum SignIn {
  signin,
  signup,
}

class LogInScreen extends StatefulWidget {
  static const String routeName = "/LogIn-screen";
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LogInScreen> {
  // SignIn _auth = SignIn.signin;
  final _LogInFormKey = GlobalKey<FormState>();

  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  //koristimo dispoce kada god je objekat iz naseg statefull widgeta obrisan
  void dispose() {
    super.dispose();
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 253),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/ProductArena_logo 1.png'),
            Center(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(7.0),
                child: Center(
                  child: Form(
                      key: _LogInFormKey,
                      child: Column(children: [
                        FormPart(
                          controller: _emailcontroller,
                          hintText: "Email",
                        ),
                        const SizedBox(height: 12),
                        FormPart(
                          controller: _passwordcontroller,
                          hintText: "password",
                        ),
                        const SizedBox(height: 10),
                        customBtn(text: "Log In", onTap: (() {}))
                      ])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
