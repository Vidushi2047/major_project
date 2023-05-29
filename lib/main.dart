import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const KietEvent());
}

class KietEvent extends StatefulWidget {
  const KietEvent({super.key});

  @override
  State<KietEvent> createState() => _KietEventState();
}

class _KietEventState extends State<KietEvent> {
  var islogin = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
    );
  }
}
