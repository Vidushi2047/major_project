import 'dart:math';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/containercard.dart';
import 'package:flash_chat/screens/ProfileScreen.dart';
import 'package:flash_chat/screens/Users/ActivityScreen.dart';
import 'package:flash_chat/screens/Users/ChangePassword.dart';
import 'package:flash_chat/screens/Users/ClubScreen.dart';
import 'package:flash_chat/screens/Users/Dashboard.dart';
import 'package:flash_chat/screens/Users/EventScreen.dart';
import 'package:flash_chat/widgets/Profile.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';

import '../../widgets/ContainerBox.dart';
import '../welcome_screen.dart';
import 'clubscreens.dart';

class UserMain extends StatefulWidget {
  const UserMain({super.key});

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  double value = 0;
  double val = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(23, 33, 42, 1),
              Color.fromARGB(255, 22, 141, 239)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          SafeArea(
              child: Container(
                  width: 200,
                  height: 500,
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        value == 0 ? value = 1 : value = 0;
                      });
                    },
                    child: Column(
                      children: [
                        DrawerHeader(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'Assets/images/profile.png',
                              ),
                              radius: 50,
                            ),
                            SizedBox(
                              height: ksmallSpacing,
                            ),
                            Text(
                              'USERNAME ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                        Expanded(
                            child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ProfileScreen();
                                  },
                                ));
                              },
                              child: const ListTile(
                                leading: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                title: Text('My Profile',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return CustomCard();
                                  },
                                ));
                              },
                              child: const ListTile(
                                leading: Icon(
                                  Icons.person_3_sharp,
                                  color: Colors.white,
                                ),
                                title: Text('Clubs',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ActivityScreen();
                                  },
                                ));
                              },
                              child: const ListTile(
                                leading: Icon(
                                  Icons.local_activity_outlined,
                                  color: Colors.white,
                                ),
                                title: Text('Activity',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return EventScreen();
                                  },
                                ));
                              },
                              child: const ListTile(
                                leading: Icon(
                                  Icons.event_sharp,
                                  color: Colors.white,
                                ),
                                title: Text('Events',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            const ListTile(
                              leading: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              title: Text('settings',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            ListTile(
                              leading: const Icon(
                                Icons.exit_to_app_outlined,
                                color: Colors.white,
                              ),
                              title: GestureDetector(
                                  onTap: () {
                                    FirebaseAuth.instance
                                        .signOut()
                                        .then((value) {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return WelcomeScreen();
                                        },
                                      ));
                                    });
                                  },
                                  child: const Text('Log out',
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ))),
          TweenAnimationBuilder(
            tween: Tween(begin: 0, end: value),
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 500),
            builder: ((_, val, __) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, value * 200)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                    appBar: AppBar(
                      leading: GestureDetector(
                        onTap: () {
                          setState(() {
                            value == 0 ? value = 1 : value = 0;
                          });
                        },
                        child: Icon(Icons.menu),
                      ),
                      title: Text('Welcome Student !'),
                      backgroundColor: Color.fromARGB(255, 8, 117, 185),
                      centerTitle: true,
                      elevation: 0,
                    ),
                    body: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(ksmallSpacing),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Activity',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: ksmallSpacing,
                            ),
                            CantainerBox(
                              image: 'Assets/images/activity.jpeg',
                              onpress: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return ActivityScreen();
                                  },
                                ));
                              },
                            ),
                            const SizedBox(height: knormalSpacing),
                            const Text(
                              'Club',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: ksmallSpacing,
                            ),
                            CantainerBox(
                              image: 'Assets/images/club.jpeg',
                              onpress: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ClubScreens();
                                  },
                                ));
                              },
                            ),
                            SizedBox(height: knormalSpacing),
                            Text(
                              'Event',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: ksmallSpacing,
                            ),
                            CantainerBox(
                              image: 'Assets/images/event.jpeg',
                              onpress: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return EventScreen();
                                  },
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                    )),
              );
            }),
          ),
          // GestureDetector(

          //   // onHorizontalDragUpdate: (e){
          //   //   if(e.delta.dx>0){
          //   //     setState(() {
          //   //       value=1;
          //   //     });
          //   //   }
          //   //   else{
          //   //     setState(() {
          //   //       value=0;
          //   //     });
          //   //   }
          //   // },
          //      onTap: () {
          //        setState(() {
          //          value==0?value=1:value=0;
          //        });
          //      },
          // )
        ],
      ),
    );
  }
}
