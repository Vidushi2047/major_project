
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/Main_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatefulWidget {
  const FlashChat({super.key});

  @override
  State<FlashChat> createState() => _FlashChatState();
}
class _FlashChatState extends State<FlashChat> {
 var islogin=false;

chekIfLogin()async{
   FirebaseAuth.instance.authStateChanges().listen(
    (User?user) {
      if(user!=null && mounted)
      {
         setState(() {
      islogin=true;
    }); }
      }
     );
 }
 @override
 void initState(){
  chekIfLogin();
  super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
     initialRoute:WelcomeScreen.id,
     routes: {
       WelcomeScreen.id:(context) => const WelcomeScreen(),
        RegistrationScreen.id:(context) => const RegistrationScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
      ChatScreen.id:(context) => const ChatScreen(),
     },
    );
  }
}

