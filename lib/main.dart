import 'package:chat_ui/screens/app_screen.dart';
import 'package:chat_ui/screens/login_screen.dart';
import 'package:chat_ui/screens/message_screen.dart';
import 'package:chat_ui/screens/welcome_screen.dart';
import 'package:chat_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: (context) => const WelcomeScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        AppScreen.route: (context) => const AppScreen(),
        MessageScreen.route: (context) => const MessageScreen()
      },
    );
  }
}
