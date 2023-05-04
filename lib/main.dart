import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/Main_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlashChat());
  await Firebase.initializeApp();
}


class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
     initialRoute:MainPage.id ,
     routes: {

       MainPage.id:(context) => WelcomeScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        LoginScreen.id:(context) => LoginScreen(),
      ChatScreen.id:(context) => ChatScreen(),

     },
      
    );
  }
}