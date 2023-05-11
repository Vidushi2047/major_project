import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
    static const String id='chat_screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Container(
      child: Center(
        child: TextButton(onPressed: ()
        {
          FirebaseAuth.instance.signOut().then(
            (value)
             {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WelcomeScreen(); 
              },));
             });
        },
         child: Text('Log out')),
      ),
     ),
    );
  }
}

