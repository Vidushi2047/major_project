import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 400,
        // color: Color.fromARGB(223, 16, 85, 142),
        width: size.width - 60,
        child: Column(
          children: [
            // Row(
            //   children: const [
            //     Text("Name",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 60,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("USERNAME",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("ROLL NO",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 40,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("2100290140115",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("LIBRARY ID",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(width: 25),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("2124MCA1134",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("EMAIL ID",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 42,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("Sachinlal111@gmail.com",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("MOBILE NO",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("9654192138",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("Current \nAddress",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("B-87/3 shalimar \nbagh street-9 \ncs marg delhi-110088",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("Father's \nName",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("Gandhi",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("Mother's \nName",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("Mother Teresa",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: [
            //     Text("Religion",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("Hindu",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   children: const [
            //     Text("Gender",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Text(":"),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     Text("Male",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.w500)),
            //   ],
            // ),
            _profilecard(),
          ],
        ),
      ),
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
          endIndent: 10,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("HINDU"),
        ),
        Divider(
          height: 5,
          endIndent: 10,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("USERNAME"),
        ),
        Divider(
          height: 5,
          endIndent: 10,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("USERNAME"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("USERNAME"),
        ),
      ],
    ),
  );
}
