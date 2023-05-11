// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flash_chat/auth.dart';
// import 'package:flash_chat/screens/Users/user_main.dart';
// import 'package:flash_chat/screens/chat_screen.dart';
// import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/ButtonWidget.dart';
import 'chat_screen.dart';


class RegistrationScreen extends StatefulWidget {
static const String id='registration_screen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

 

 final emailController=TextEditingController();
 final passwordController=TextEditingController();
  final comfirmpasswordController=TextEditingController();
  String? email;
 late String password;
 late String comfirmpassword;

 static const KeyEmail='email';
 static const keyUid='uid';

 registration(){
 if(password==comfirmpassword)
 {
  print('password is same');
   FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: KeyEmail,
     password: password).then((value) async {
      if(value!=null)
      {
      
        print('successfull');
         print(value);
          print(value.runtimeType);
            var pref = await SharedPreferences.getInstance();
                  pref.setString(KeyEmail, value.user!.uid );
                  pref.setString(keyUid, value.user!.email.toString());
         print('successfull');
 Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ChatScreen();


      },
      )
      
      );
      }
     
     });
 }
 else
 {
  print("Password doesn't Match");
 }
 }


 @override
 void dispose(){
  emailController.dispose();
  passwordController.dispose();
  super.dispose();
 }
 final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Form(
        key: _formkey,
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           const Hero(tag: 'logo', child:  Icon(Icons.flash_on,color: flashColor,size: 100,),),
           const  SizedBox(height: ksmallSpacing,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              
              onChanged: (value) {
                email=value;
              },
              controller: emailController,
               validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Email';
                }
                else if(!value.contains('@')){
                  return 'Please Provide valid Email';
                }
                return null;
              },
              decoration:const  InputDecoration(
      
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(kdefaultPadding),),
                borderSide: BorderSide(width: 1,color: Colors.blueAccent)),
                hintText: 'xyz@gmail.com',
                label: Text('enter your email'),
      
              ),
            ),
           const SizedBox(height: ksmallSpacing,),
             TextFormField(
            
              obscureText: true,
              onChanged: (value) {
                password=value;
              },
                validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Password';
                }
                 else if(value.length<=5){
                  return 'Password length must be greater than 6';
                }
              
                return null;
              },
              controller: passwordController,
              decoration:const InputDecoration(
               
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(kdefaultPadding),),
                borderSide: BorderSide(width: 1,color: Colors.blueAccent)),
                hintText: 'xyz@12345',
                label: Text('enter your password'),
      
              ),
            ),
             const SizedBox(height: ksmallSpacing,),
             TextFormField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password=value;
              },
                validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Password';
                }
                else if(value.length<=5){
                  return 'Password length must be greater than 6';
                }
              
                return null;
              },
              controller: comfirmpasswordController,
              decoration:const InputDecoration(
               
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(kdefaultPadding),),
                borderSide: BorderSide(width: 1,color: Colors.blueAccent)),
                hintText: 'xyz@12345',
                label: Text('Comfirm password'),
      
              ),
            ),
            const SizedBox(height: kdefaultPadding,),
            ButtonWidget(onpress:()async{
              if(_formkey.currentState!.validate())
              {
               
                  email=emailController.text;
                  password=passwordController.text;
                   comfirmpassword=comfirmpasswordController.text;
             
                 registration();

                
              }
            },
            text: 'registor',
            color: Colors.blueAccent,),
          ],
        ),
      ), ),
    );
  
 }
}
