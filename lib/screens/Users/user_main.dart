import 'package:flash_chat/screens/Users/ChangePassword.dart';
import 'package:flash_chat/screens/Users/Dashboard.dart';
import 'package:flash_chat/screens/Users/Profile.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/material.dart';

class UserMain extends StatefulWidget {
  const UserMain({super.key});

  @override
  State<UserMain> createState() => _UserMainState();
}


class _UserMainState extends State<UserMain> {

int _selectedIndesx=0;
static List<Widget>_widgetOption=<Widget>[
  Dashboard(),
  Profile(),
  ChangePassword(),
 
];
void onItemTabed(int index){
  setState(() {
    _selectedIndesx=index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Welcome User'),
            TextButton(onPressed: 
            (){
                Navigator.pushAndRemoveUntil(
                  context,PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) 
                    => LoginScreen(),
                transitionDuration: const Duration(seconds:0 ),
                ),
                  (Route)=>false,
                );
            }, child: const Text('Log out'))
           ],),
      ),
      body: _widgetOption.elementAt(_selectedIndesx),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'DashBoard'),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: 'Password'),
      ],
      onTap: onItemTabed,
      currentIndex: _selectedIndesx,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      ),
    );
  }
}