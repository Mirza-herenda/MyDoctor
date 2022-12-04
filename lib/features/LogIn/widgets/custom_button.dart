// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class customBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const customBtn({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        // style: TextStyle(fontFamily:""),
        text,
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        foregroundColor: Colors.black,
        backgroundColor: Color.fromRGBO(4, 231, 98, 1),
      ),
    );
  }
}
