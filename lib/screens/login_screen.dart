// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:practice_project/screens/contacts_screen.dart';

import '../logic/authentication.dart';
import '../widgets/form_button.dart';
import '../widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
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
              controller: emailController,
              hintText: 'email'.toUpperCase(),
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
              onPressed: () async {
                final auth = Auth(emailController.text, passwordController.text);

                await auth.loginUsers();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  ContactScreen(),
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
