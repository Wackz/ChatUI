import 'package:chat_ui/components/custom_button.dart';
import 'package:chat_ui/screens/app_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const route = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? "assets/images/Logo_light.png"
                : "assets/images/Logo_dark.png",
            height: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              onPressed: () => Navigator.pushNamed(context, AppScreen.route),
              text: "Login"),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onPressed: () => Navigator.pushNamed(context, AppScreen.route),
            text: "Sign Up",
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    )));
  }
}
