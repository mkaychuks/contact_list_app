import 'package:flutter/material.dart';
import 'package:practice_project/screens/login_screen.dart';
import 'package:practice_project/widgets/form_button.dart';

import '../widgets/textfield_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register".toUpperCase()),
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
              buttonText: 'register',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
