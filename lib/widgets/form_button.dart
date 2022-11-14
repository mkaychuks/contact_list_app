import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(360, 60),
      ),
      child: Text(
        buttonText.toUpperCase(),
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
