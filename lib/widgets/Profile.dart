import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        // height: 400,
    
        width: size.width - 60,
        child: Column(
          children: [
           
            _profilecard(),
          ],
        ),
      )
    );
  }
}

Widget _profilecard() {
  return Card(
    color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
      children: const [
       
        ListTile(
          leading: Icon(Icons.person_2),
          title: Text("2124MCA1136"),
        ),
        Divider(
          height: 5,
          endIndent: 0,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Inogeeks"),
        ),
        Divider(
          height: 5,
          endIndent: 0,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Coding,poetry,sports"),
        ),
        Divider(
          height: 5,
          endIndent: 0,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("USERNAME"),
        ),
         Divider(
          height: 5,
          endIndent: 0,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("USERNAME"),
        ),
      ],
    ),
  );
}
