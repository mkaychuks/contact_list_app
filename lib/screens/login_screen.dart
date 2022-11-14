import 'package:flutter/material.dart';

import '../widgets/form_button.dart';
import '../widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login".toUpperCase()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              controller: usernameController,
              hintText: 'username'.toUpperCase(),
              obscureText: false,
              textFieldIcon: const Icon(Icons.people),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFieldWidget(
              controller: passwordController,
              hintText: 'password'.toUpperCase(),
              obscureText: true,
              textFieldIcon: const Icon(Icons.key),
            ),
            const SizedBox(
              height: 18.0,
            ),
            FormButton(
              buttonText: 'login',
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
