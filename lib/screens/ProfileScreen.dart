import 'package:flash_chat/utils/constant.dart';
import 'package:flash_chat/widgets/Profile.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height:size.height*0.8,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(224, 20, 52, 79),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              ),
              Positioned(
                bottom: size.height*0.7,
                left: size.width*0.38,
                child:const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSqKuVvlbxGMi9XNOucHAgBFfpmzDGPVVl8_uxIMndHB08AZpWrPvLS9p60YtYNKwPUUuvYi6hA9D8k_fs")),
              ),
               Positioned(
                  top: 80,
                  left: size.width/5,
                  child: Column(children: [
                                  Text(
                    "Sachin Lal",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: ksmallSpacing/3,),
                  Text(
                    "sachin.2124mca1136@kiet.edu",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                  ],)
                 ),
              
              Positioned(top: 150, left: 30, child: Profile()),
            ],
          )
        ],
      ),
    );

    
  }
}
