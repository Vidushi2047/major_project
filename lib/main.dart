
import 'package:flash_chat/screens/Main_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() async{
   // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const FlashChat());
}


class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
     initialRoute:MainPage.id ,
     routes: {
       MainPage.id:(context) => const WelcomeScreen(),
        RegistrationScreen.id:(context) => const RegistrationScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
      ChatScreen.id:(context) => const ChatScreen(),
       
     },
      
    );
  }
}