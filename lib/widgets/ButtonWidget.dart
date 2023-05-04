import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,this.color,this.text,@required this.onpress
  });
  final Color?color;
  final String ? text;
  final VoidCallback ?onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress!,
      child:  Container(
      
     decoration: BoxDecoration(
      boxShadow: [BoxShadow(
        color: Colors.blue.withOpacity(0.5),
        offset: const Offset(0, 5),
        blurRadius: 10
        
      ),], 
       color: color,
       borderRadius: BorderRadius.circular(kdefaultPadding),
     ),
     child:Padding(padding: EdgeInsets.all(knormalSpacing),
     child:  Center(
       child: Text(text!,
     style:TextStyle(
       color: Colors.white,
       fontSize: 12
     ),),
     ),)
    ),
    );
  }
}