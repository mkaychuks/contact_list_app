import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.textFieldIcon});

  final bool obscureText;
  final Widget? textFieldIcon;
  final String hintText;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        prefixIcon: textFieldIcon,
        hintText: hintText,
      ),
      maxLength: 20,
      obscureText: obscureText,
    );
  }
}
