import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';

class ClubScreen extends StatefulWidget {
  const ClubScreen({super.key});

  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return Scaffold(
     
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: ()
        {Navigator.pop(context);
        }, 
        icon:const Icon(Icons.arrow_back)
        ),
        backgroundColor: Colors.blueAccent,
        title: const Text('Club',style: TextStyle(fontSize: 20,color: Colors.white),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: size.height/3,
                    // width: size.width/3,
                  decoration:const  BoxDecoration(
                    color: Colors.amber
                  ),
                  child: Expanded(
                    child: Container(
                      
                      margin: const EdgeInsets.all(ksmallSpacing/5),
                      decoration:const  BoxDecoration(
                        image: DecorationImage(image: AssetImage('Assets/images/club1.jpg'),
                        fit:BoxFit.fill )
                      ),
                    ),
                  ),
                ),
                 Container(
                 
                  decoration:const  BoxDecoration(
                    color: Colors.amber
                  ),
                  child: Container(
                    width: size.width/2,
                    margin: const EdgeInsets.all(ksmallSpacing/5),
                    decoration:const  BoxDecoration(
                      image: DecorationImage(image: AssetImage('Assets/images/club1.jpg'),
                      fit: BoxFit.fill)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}