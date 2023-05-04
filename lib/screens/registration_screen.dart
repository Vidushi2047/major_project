import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/auth.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../utils/colors.dart';
import '../widgets/ButtonWidget.dart';


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
 late String email;
 late String password;
 late String comfirmpassword;


 Future <void>signInWithEmailAndPassword()async{
        try{
            await Auth().signInwithEmailAndPassword
          (email: emailController.text, 
          password: passwordController.text);
        }on FirebaseAuthException catch(e){
         setState(() {
           Auth().errorMessage=e.message!;
         });
        }
 }
 Future <void>createUserWithEmailAndPassword()async{
        try{
            await Auth().createUserwithEmailAndPassword
          (email: emailController.text, 
          password: passwordController.text);
        }on FirebaseAuthException catch(e){
         setState(() {
           Auth(). errorMessage=e.message!;
         });
        }
 }
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
            ButtonWidget(onpress:(){
              if(_formkey.currentState!.validate())
              {
                setState(() {
                  email=emailController.text;
                  password=passwordController.text;
                });
              }

            
            },
            text: Auth().islogin?'registor':'Log in',
            color: Colors.blueAccent,),
           
          ],
        ),
      ) ),
    );
  }
 
}
