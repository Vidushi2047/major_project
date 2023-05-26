import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';

import '../../widgets/PhotoContainer.dart';
import '../../widgets/photoCollage.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Activity',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: knormalSpacing + 5),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: ksmallSpacing),
                child: PhotoCollage(
                  image1: 'Assets/images/act1.jpg',
                  image2: 'Assets/images/act2.jpg',
                  image3: 'Assets/images/act3.jpg',
                ),
              ),
              PhotoContainer(
                image: 'Assets/images/act4.jpg',
              ),
              PhotoContainer(
                image: 'Assets/images/act5.jpg',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: ksmallSpacing),
                child: PhotoCollage(
                  image1: 'Assets/images/act6.jpg',
                  image2: 'Assets/images/act7.jpg',
                  image3: 'Assets/images/act8.jpg',
                ),
              ),
              PhotoContainer(
                image: 'Assets/images/act9.jpg',
              ),
              PhotoContainer(
                image: 'Assets/images/act5.jpg',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: ksmallSpacing),
                child: PhotoCollage(
                  image1: 'Assets/images/act9.jpg',
                  image2: 'Assets/images/act10.jpg',
                  image3: 'Assets/images/act11.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
