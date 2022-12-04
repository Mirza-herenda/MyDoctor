import "package:flutter/material.dart";

class FormPart extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const FormPart({Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
              //borderSide: BorderSide(color: Colors.red),

              ),
        ) //validator: (val) {},
        );
  }
}
