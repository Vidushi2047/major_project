import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: size.width - 60,
        child: Column(
          children: [
            _profilecard(),
          ],
        ),
      ),
    );
  }
}

Widget _profilecard() {
  return Card(
    color: Color.fromARGB(224, 20, 52, 79),
    child: ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == 0) {
          return _customListTile(
            leadingIcon: Icons.person,
            title: "Library Id",
          );
        } else if (index == 1) {
          return _customListTile(
            leadingIcon: Icons.person,
            title: "Name",
          );
        } else if (index == 2) {
          return GestureDetector(
            onTap: () {},
            child: _customListTile(
              leadingIcon: Icons.person,
              title: "Roll Number kiet edu",
            ),
          );
        }
        // Add more conditions for additional tiles if needed

        return Container(); // Return an empty container by default
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
          child: Divider(color: Colors.white), // White gap between tiles
        );
      },
      itemCount: 3, // Replace with the actual number of tiles
    ),
  );
}

Widget _customListTile({required IconData leadingIcon, required String title}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(223, 255, 255, 255),
    ),
    padding: const EdgeInsets.all(8),
    child: ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
    ),
  );
}
